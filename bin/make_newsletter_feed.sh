#!/bin/bash

## To avoid having to export the API key every time you run the script
## you can store it in a file called 'api_key.sh'. It will only be sourced
## locally as the environment variable "CI" is set on Travis.
if [ -z "$CI" ]
then
    echo "not on Travis sourcing locally stored API key"
    source api_key.sh
fi

OUTPUT_PATH=$1

## Check that the API key is available
if [ -z "$MAILCHIMP_NEWSLETTER_KEY" ]
then
    echo "The variable MAILCHIMP_NEWSLETTER_KEY is not set"
    exit 1
fi

curl --request GET --url "https://us14.api.mailchimp.com/3.0/campaigns?count=100&folder_id=ef08c18939&fields=campaigns.archive_url,campaigns.settings.subject_line,campaigns.send_time"  --user anystring:$MAILCHIMP_NEWSLETTER_KEY | jq '[.campaigns[] | {url: .archive_url, pub_date: .send_time, subject: .settings.subject_line}  ]' > "$OUTPUT_PATH"/newsletter.json


