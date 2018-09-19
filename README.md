# AMY Data Feeds

This is a Jekyll repo for taking YAML Data from AMY and converting it to the JSON, GeoJSON and ICS formats used to show dynamic workshop and instructor data on The Carpentries website.

## Usage 

Set environment variables in the shell for AMY authentication:
```
export AMY_USER="XXXX"
export AMY_PASS="XXXX"
```

```
make amy
make site 
```

## Travis CI Deploy

This repo is used to dynamically update AMY instructor profiles. Travis is set to rebuild from the AMY instructor database once per day. Then the built feeds are pushed to an S3 bucket and mapped (via CloudFlare CDN) to `https://carpentries.org/amy/<pagename>`

## Access Feeds
| File        | Description 
|------------|---------------|
| [all_instructors.json](https://carpentries.org/amy/all_instructors.json) | GeoJSON - airport, list of names
| [dc_instructors.json](https://carpentries.org/amy/dc_instructors.json) | GeoJSON - airport, list of names
| [lc_instructors.json](https://carpentries.org/amy/lc_instructors.json) | GeoJSON - airport, list of names
| [dc_workshops.json](https://carpentries.org/amy/dc_workshops.json) | GeoJSON - workshop location, html fragment
| [lc_workshops.json](https://carpentries.org/amy/lc_workshops.json) | GeoJSON - workshop location, html fragment
| [dc_workshops_past.json](https://carpentries.org/amy/dc_workshops_past.json) | GeoJSON - workshop location, html fragment
| [lc_workshops_past.json](https://carpentries.org/amy/lc_workshops.json) | GeoJSON - workshop location, html fragment
| [swc_instructors.json](https://carpentries.org/amy/swc_instructors.json) | GeoJSON - airport, list of names
| [swc_workshops.json](https://carpentries.org/amy/swc_workshops.json) | GeoJSON - workshop location, html fragment
| [swc_workshops_past.json](https://carpentries.org/amy/swc_workshops_past.json) | GeoJSON - workshop location, html fragment
| [workshops.json](https://carpentries.org/amy/workshops.json) | GeoJSON  workshop location, html fragment
| [workshops_past.json](https://carpentries.org/amy/workshops_past.json) | GeoJSON - workshop location, html fragment
| [all_workshops.ics](https://carpentries.org/amy/all_workshops.ics) | GeoJSON - workshop location, html fragment
| [dc_workshops.ics](https://carpentries.org/amy/dc_workshops.ics) | iCal - Calendar of workshops
| [swc_workshops.ics](https://carpentries.org/amy/swc_workshops.ics) |iCal - Calendar of workshops


