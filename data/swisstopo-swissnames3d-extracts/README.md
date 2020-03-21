# Data source and preparation

These datasets are extracts from the dataset [swissNAMES3D](https://shop.swisstopo.admin.ch/en/products/landscape/names3D) [(2)](https://opendata.swiss/en/dataset/swissnames3d-geografische-namen-der-landesvermessung)[(3)](https://data.geo.admin.ch/ch.swisstopo.swissnames3d/) and are [opendata.swiss-BY](https://opendata.swiss/en/terms-of-use/) [swisstopo](https://www.swisstopo.admin.ch/). The raw data from [data.geo.admin.ch](https://data.geo.admin.ch/ch.swisstopo.swissnames3d) was used to extract features with `OBJEKTART == "Spitalareal"`. The original features are polygons.

# Data enrichment

The resulting features have been augmented in the following ways:
- extraction of centroids (center of gravity points)
- reprojection from EPSG:2056 (CH1903+ LV95) to EPSG:4326 (WGS 1984)
- for point features, addition of the following attributes:
	- `N_EPSG2056`: north-south coordinate in CH1903+ LV95 spatial reference system, "new national coordinates"
	- `E_EPSG2056`: west-east coordinate in CH1903+ LV95 spatial reference system, "new national coordinates"
	- in datasets in EPSG:4326 spatial reference system: 
		- `LON_EPSG4326`: longitude in decimal degrees
		- `LAT_EPSG4326`: latitude in decimal degrees

# Data formats
This process yields the following datasets:
- `hospitals_areas_swissnames3d.geojson` (EPSG:4326)
- `hospitals_centroids_swissnames3d.geojson` (EPSG:4326)
- `hospitals_centroids_swissnames3d.csv` (coordinates in both EPSG:2056 and EPSG:4326)
- `hospitals_areas_switzerland_EPSG2056.shp` and accompanying ("sidecar") files
- `hospitals_areas_switzerland_EPSG4326.shp` and accompanying ("sidecar") files
- `hospitals_centroids_switzerland_EPSG2056.shp` and accompanying ("sidecar") files
- `hospitals_centroids_switzerland_EPSG4326.shp` and accompanying ("sidecar") files

# Notes and caveats

Please study the [Detaillierte Produktinfo by swisstopo](https://www.swisstopo.admin.ch/content/swisstopo-internet/de/home/products/landscape/names3d/_jcr_content/contentPar/tabs/items/dokumente/tabPar/downloadlist/downloadItems/101_1554815154300.download/20190410_swissNAMES3D_Produktinfo_de_bf.pdf) on this dataset.

Some caveats apply (my perspective): 
- Parts of the data might be out-of-date, swisstopo's usual update cycle being 6 years. 
- According to the [product description](https://www.swisstopo.admin.ch/content/swisstopo-internet/de/home/products/landscape/names3d/_jcr_content/contentPar/tabs/items/dokumente/tabPar/downloadlist/downloadItems/101_1554815154300.download/20190410_swissNAMES3D_Produktinfo_de_bf.pdf) the data ought to be derived from cantonal lists: "Beispiel: Kantonale Spitallisten (Objektart “Spitalareal“)"
- Please note, the data is originally gazetteer data, i.e. data used for labeling places in maps.
- The [product description](https://www.swisstopo.admin.ch/content/swisstopo-internet/de/home/products/landscape/names3d/_jcr_content/contentPar/tabs/items/dokumente/tabPar/downloadlist/downloadItems/101_1554815154300.download/20190410_swissNAMES3D_Produktinfo_de_bf.pdf) explains the linguistic concepts of endonyms and exonyms. If I understand correctly, among the 401 features in the data, a few are duplicates as they are commonly referred to using two different names. Those features can be found by looking at the value of the attribute `NAMENGRUPP` where given.

2020-03-21, Ralph Straumann
