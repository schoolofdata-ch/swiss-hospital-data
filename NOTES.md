---
tags: covid19mon
title: Data on hospital infrastructure 
---
This is a collaborative effort to establish a common data set where the community can contribute data in a moderated way. To contribute, you can:

:package: View the crowdsourced [Data Package](https://github.com/schoolofdata-ch/swiss-hospital-data/#data) and OGD [Data Schema](https://github.com/openZH/covid19_hospitalinfra) to check the data baseline.

:mag: Use our [Online Form](https://forms.gle/gD5iT9Ekzkauwuak9) to submit individual data points or corrections.

:floppy_disk: Visit the [Issue Tracker](https://github.com/schoolofdata-ch/swiss-hospital-data/issues/) to find out how you could contribute to automation & validation.

:grapes: Explore visualizations ([ETH](https://twitter.com/thvanboeckel/status/1241748845253595137?s=21)) and models ([neherlab](https://neherlab.org/covid19/), [plotti](http://corona-beds.herokuapp.com/)) that use this data.

:person_with_pouting_face: Join our [Team Chat](https://team.opendata.ch/covid19mon/channels/hospitals) if you have any other questions or suggestions.

# Indicators of interest

- N of hospitals in CH (with name and geolocation)
- N of beds by hospital
- N of ICU beds by hospital
- N of respirators by hospital
- average % bed availability pre-COVID-19 ("Bettenauslastung") by hospital
- N ICU nurses by hospital ("IPS Pflege")

# Tasks

This is a running backlog, ask in the chat or visit the [Issue Tracker](https://github.com/schoolofdata-ch/swiss-hospital-data/issues/) to contribute.

- [x] put together an initial team of contributors
- [x] set up collaboration platform and shared repositories
- [x] start contacting data stakeholders (see list below)
- [x] evaluate data processing tools: [OpenRefine](http://refine.schoolofdata.ch/project?project=1810307769459), [Workbench](https://app.workbenchdata.com/workflows/62441), [RCloud](https://rstudio.cloud/project/1049226), [Renkulab](https://renkulab.io/projects/oleg/swiss-hospitals)
- [x] get base list of all Swiss hospitals with addresses (list 1)
- [x] start collecting data on N ICU beds by hospital (Luca) (list 2)
- [x] get geolocations of hospitals (and other attributes if they have), check [swissnames3d](https://data.geo.admin.ch/ch.swisstopo.swissnames3d/) (list 4; Ralph)
- [x] digitize list of ICU and beds from [swiss-icu-cert](https://www.swiss-icu-cert.ch/files/daten/Dokumente/liste_zertifizierte/Internet_Liste_SGI_zertifizierte_Intensivstationen_200311.01.pdf) (list 3)
- [ ] start collecting data on N ICU nurses (no data sources yet)
- [ ] get data on respirators by hospital (no data sources yet)
- [ ] get data on N of patients in ICU (no data sources yet, Matthias on it)
- [ ] write script to merge all the different lists we have (reproducible)
- [ ] set up data flow processing to autoupdate the Data Package 
- [ ] research ways to update the list of hospitals & corresponding figures
- [ ] brainstorm and post further analysis, visualization & communication challenge

_An idea of the basic workflow we have in mind:_

![](https://us-east-1.linodeobjects.com/dribdat/uploads/upload_fd3f64ee005f2d6fc826621df1e41767.png)

# Data sources

## National

- [x] [Kennzahlen der Schweizer Spitalen](https://opendata.swiss/de/dataset/key-data-on-swiss-hospitals-2017) from the [Federal Office of Health](https://www.bag.admin.ch/bag/de/home/zahlen-und-statistiken/zahlen-fakten-zu-spitaelern/kennzahlen-der-schweizer-spitaeler.html) lists all Swiss hospitals and large clinics, including the number of beds and other indicators as of 2017. This is the open data starting point for our project, even though it is rather out of date.
- [x] The geolocations of hospitals and other attributes is available from [SWISSNAMES3D](https://data.geo.admin.ch/ch.swisstopo.swissnames3d/) from Swisstopo. You can see this if you search for _Hospital_ on map.geo.admin.ch, which also has an open data map of [hospital landing sites](https://map.geo.admin.ch/?topic=ech&bgLayer=ch.swisstopo.pixelkarte-farbe&layers=ch.bazl.spitallandeplaetze&layers_opacity=1,1,1,0.8,1&layers_visibility=false,false,false,false,true&layers_timestamp=18641231,,,,&lang=en). Thanks [@swiss_geoportal](https://twitter.com/swiss_geoportal/status/1241344164203282432) for your support.
- [x] The list of intensive care units (ICU) and beds from the Swiss Society or Intensive Medicine ([swiss-icu-cert](https://www.swiss-icu-cert.ch/files/daten/Dokumente/liste_zertifizierte/Internet_Liste_SGI_zertifizierte_Intensivstationen_200311.01.pdf)) has been extracted by [Jonas Herzog](https://twitter.com/herzogjonas/status/1241345143824932864) for his [visualization](https://jonasdavid.carto.com/builder/809f19e4-5f13-4e78-8da5-c093027ac8c4/embed).
- [ ] [Gesundheitsdirektorenkonferenz](https://www.gdk-cds.ch/fileadmin/docs/public/gdk/themen/spitalfinanzierung/GDK-UEbersicht_Spitallisten_Spitaltarife.pdf) lists of hospitals by canton, and might be more up to date than the BAG publication.
- [ ] [Spitalverband H+](www.hplus.ch) likely has updated data on all hospitals - we are trying to reach out.
- [ ] [OBSAN - Hospitalisierungsrate in Akutspitälern](https://www.obsan.admin.ch/de/indikatoren/hospitalisierungsrate-akutspitaelern) can be downloaded in [Excel format](https://www.obsan.admin.ch/4f9ab04a-01df-4b6d-8062-cbd134307718).
- [ ] [Spitalfinder.ch](http://www.spitalfinder.ch) could be a useful reference, might even be interested to support this. See their [Datenquellen](http://www.spitalfinder.ch/template/assets/pdf/Methodik_D.pdf)
- [ ] [Nationalen Verein für Qualitätsentwicklung in Spitälern und Kliniken](https://www.anq.ch/de/) is referenced by Spitalfinder. All hospitals are required to register with them. _"Ziel des ANQ ist, die Messresultate national vergleichend darzustellen, die breite Öffentlichkeit zu informieren und den Spitälern und Kliniken einen kontinuierlichen Verbesserungsprozess (KVP) zu ermöglichen."_
- [ ] [Kennzahlen der Schweizer Pflegeheime](https://opendata.swiss/de/dataset/kennzahlen-der-schweizer-pflegeheime) and [Spitex vor Ort](https://www.spitex.ch/Verband/Unsere-Mitglieder/Spitex-vor-Ort/P7C4G/) are databases of care homes, which could play a role in an expanded version of our database.
- [ ] Health insurers (Krankenkassen) in principle should have real-time data on hospital admissions and releases. It might be worth encouraging contacts there to join forces with others and make these data available in appropriately aggregated form. The [comparis.ch](https://www.comparis.ch/) insurance recommendation website maintains a [list of hospitals](https://www.comparis.ch/spitalvergleich/spital/spitalliste) used to reference providers.
- [ ] Expatica has a high ranked private [list of hospitals](https://www.expatica.com/ch/healthcare/healthcare-services/hospitals-in-switzerland-102077/) with links.

## Regional

- [ ] [Zürich open data](https://data.stadt-zuerich.ch/dataset/geo_spital) and [SITG Geneva](https://opendata.swiss/de/dataset/__142) are regional data sources with some additional fields, however missing capacity numbers or any other actionable indicators. We could reach out to see if there is more behind the scenes.

## International

- [ ] The [List of hospitals in Switzerland](https://en.wikipedia.org/wiki/List_of_hospitals_in_Switzerland) on Wikipedia is probably the first place people would go to get an overview. They currently reference 2010 data! In German Wikipedia, see [Kategorie:Krankenhaus in der Schweiz](https://de.wikipedia.org/wiki/Kategorie:Krankenhaus_in_der_Schweiz).
- [ ] [@philshem](https://twitter.com/philshem/status/1241297557529247744) and [@sfkeller](https://twitter.com/sfkeller) suggested OpenStreetMap extraction via scripts or a [OSM Query](https://tinyurl.com/vwetfx5) for Switzerland, which can be turned into an OSM API (where polygons need to be processed separately). See also [taginfo](http://taginfo.openstreetmap.ch/tags/healthcare=hospital) via [@rastrau](https://twitter.com/rastrau/status/1241304667306577922?s=21). We got advice from the developer of [water-fountains/datablue](https://github.com/water-fountains/datablue#datablue), which could be used to import OSM data.
- [ ] Healthsites.io collects and monitors data about health facilities around the world based on OpenStreetMap. They have data management [workflows](https://github.com/healthsites/healthsites/wiki/Data-lifecycle), a standard [data model](https://github.com/healthsites/healthsites/wiki/Healthsites-data-model) and complete [OSM tag list](https://github.com/healthsites/healthsites/wiki/Healthsite-attributes#040817---attribute-session-at-msf), an [API](https://healthsites.io/api/docs/), and [simple tracking](https://us-east-1.linodeobjects.com/dribdat/uploads/upload_5b70ecdd7ad8aed53f306a0aa555b555.jpg) of "completeness of attributes", or indicators.

# Discussion

19.3.2020

- We are mostly conversing in the [Hospital Data](https://team.opendata.ch/covid19mon/channels/hospitals) chatroom - use the Chat link at the bottom of the [hackathon page](https://db.schoolofdata.ch/event/7#top) to join us. Additional notes and questions are summarized from time to time here.
- Each observation in the BAG base list is a hospital group. Some hospital groups have several dependencies. For example Insel "Gruppe AG (nicht-universitär)" has 5 locations ("Standorte") in Bern, Aarberg, Belp, Münsingen, Riggisberg (different zip codes). 
- The number of beds is not available for each Standort, only for the Hospital group as a whole. This is a problem when the data is used for spatial models and catchment areas.
- We started with a [Google sheet](https://docs.google.com/spreadsheets/d/1tMt2MEmBGwPHIj2OJkOTXl_BV-4NYiH85ILUNvSCN7g/edit?usp=sharing), which was cleaned up using [OpenRefine](http://refine.schoolofdata.ch/project?project=1810307769459), and then further aggregated in an [R script](https://rstudio.cloud/project/1049226). The Canton of Zürich made a [schema proposal](https://github.com/openZH/covid19_hospitalinfra), based on which we are developing a [Data Package](https://github.com/loleg/ch-hospitals-infra).

20.3.2020

- We are genuinely motivated by the idea of having a near real time view of hospital availability, an overview of all actors around the country. 
- The media conference this morning from the federal commission, announcing further measures and responding to concerns about information flow, put fuel on the fire. 
- Epidemologists working on models for fighting the pandemic tell us "The numbers for hospital beds of Swiss cantons were guessed on a pro-rata bases from national numbers. It would be great to have more accurate figures" ([neherlab](https://github.com/neherlab/covid19_scenarios_data/issues/10)).
- We want to be able to inform people as quickly as possible from a bottom-up perspective, connected to issues and authentic data top-down.
- In addition a response is needed to the widespreads concerns about the health system being overcapacity and soon overwhelmed as in other countries.
- We assume that the authorities are competently tracking availability, ensuring patients are transferred appropriately etc. - but we also want to have more transparency as this is happening and not just after the fact.

21.3.2020

- Our team is now composed of an epidemologist, software engineer, data specialist, several additional people. We are concerned citizens fighting for better public health awareness: informed, connected, and motivated to do the right thing now.
- We are currently using the BAG 2017 List as a backbone with data from Luca on Number of ICU beds. These data are maybe partly outdated, we don't know for sure. 
- I'm a bit worried about spreading a visualization.  If the crisis toughens, people might refer to it for going to a hospital. That may not be the desired process and of course could be quite dangerous if the data contains errors.
- I really fear that there is no such thing as a central up-to-date database about swiss hospitals, because everything is very cantonal
- We've been saying this for (in the case of hospital data) 7+ years. In this time of crisis, we have a real chance to make an impact.
- Our data dictionary should reference [Medizinische Kodierung und Klassifikationen](https://www.bfs.admin.ch/bfs/de/home/statistiken/gesundheit/nomenklaturen/medkk.html) from BFS.

22.3.2020

- A basic [workflow](https://us-east-1.linodeobjects.com/dribdat/uploads/upload_fd3f64ee005f2d6fc826621df1e41767.png) was added from where we can continue the development, and drafted now a concept, which can be used to negotiate with officials about open data. Maybe this can be used together with a showcase of data visualization. 
- We've updated our challenge page, cleaning out the old content, and refactored the working document. The GitHub repository now has an initial dataflows set up. There is a [tutorial here](https://github.com/datahq/dataflows/blob/master/TUTORIAL.md) if you'd like to contribute. Right now it just emulates the R script, though in theory it could incorporate R code. 
- The current goal on the technical side is to better organize the data collection, and use [GitHub Actions](https://github.com/actions) or another CI tool to automate the data refresh.

23.3.2020

- We've accepted Pull Requests from [@sfkeller](https://github.com/schoolofdata-ch/swiss-hospital-data/pull/7) and [@fkrauter](https://github.com/schoolofdata-ch/swiss-hospital-data/pull/4)
- An ETH Zurich group has been working on collection of number of ICU beds and ventilators at each hospital in Switzerland. They are about the release a first report on hospitalisation capacity in Switzerland soon, and will share collected data soon. They are adding the ICU data from sources we recommended. See [twitter/thvanboeckel](https://twitter.com/thvanboeckel/status/1241748845253595137?s=21)
- @plotti added covid19 ICU beds prediction to the hackathon at https://db.schoolofdata.ch/project/75 - see [twitter/plotti](https://twitter.com/plotti/status/1242196140923195392?s=19)

