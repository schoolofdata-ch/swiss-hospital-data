# Healthcare Facilities of Switzerland
 
Delivered to you by OpenStreetMap - the Wikipedia of Map Data.

Validated by hand with: 

* own knowledge
* Healthcare's own websites
* Wikidata.org
* swisstopo swissNAMES3D Extract 
* Intensive care unit list (ICU) - https://www.swiss-icu-cert.ch/de/anerkannte-intensivstationen.html via https://jonasdavid.carto.com/builder/809f19e4-5f13-4e78-8da5-c093027ac8c4/embed 


Date of extraction: 2020-03-22.


OpenStreetMap data license: (c)  ODbL.

OpenStreetMap tags used:

* amenity ~ hospital|clinic
* healthcare:*
* healthcare:speciality:* (especially "intensive" for ICU).

Webservice used: Overpass-Turbo. Shortcut to reproduce/update (see also query in Appendix below):  https://overpass-turbo.osm.ch/?q=LyoKSGVhbHRoY2FyZSBhbWVuaXRpZXMgb2YgU3fEknplcmxhbmQgaW4gT3DEkFN0xItldE1hcAoKUsSVb3VyY8SVOgoqIERvY8SWJiBUaXBwczogaHR0cDovL8Sca2kub3NtxZhyZ8WUacWWL092xJ9wYXNzX0FQSSzFjcWPxYrFki9naXPFlcWXaHNyLmNoxaLFpHLFpsWoxarFrCDEvsWGdXRvcmnEhcWLxa_FkMWLxZNvxKpuc8W9b29sbcSyc8W8xb4gPiAixKnEq8StZcSvxLFwLURhdMSQIGJlesSUaMSQIsS-LwpbxLh0Ompzb25dW8STxI_GvTozMF07CsSKxIRbIm7EjmUiPSJTxb13ZWl6L1N1xbVzZcefdsedxJ5yYcelx53HqSLHjMaGKAogIG53cseRx5TEkXR5In4iaMWZcMSSxIV8Y2zEpmljx64ox49hKceNx7PHtce3x7_EhMSGxIjHj8iLyI3IjwrIm8WTIGPHgsaAdCBwxpp5Z8eCxJbGisikb8SmdHMKxr3In8SQxq9yx40&c=BNRDNWrLvM

Resources:

* Docs & Tipps: http://wiki.osm.org/wiki/Overpass_API, https://giswiki.hsr.ch/Overpass_API 
* Tutorials: https://openschoolmaps.ch/ > "OpenStreetMap-Daten beziehen"

Contact: @sfkeller or https://sosm.ch/contact/ .


# Appendix

````
Overpass Query:
/*
Healthcare amenities of Switzerland in OpenStreetMap

Resources:
* Docs & Tipps: http://wiki.osm.org/wiki/Overpass_API, https://giswiki.hsr.ch/Overpass_API 
* Tutorials: https://openschoolmaps.ch/ > "OpenStreetMap-Daten beziehen"
*/
[out:json][timeout:30];
area["name"="Schweiz/Suisse/Svizzera/Svizra"]; 
(
  nwr["amenity"~"hospital|clinic"](area);
  nwr["healthcare"](area);
);
// convert polygons to points
out center;
````
