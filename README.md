# osm2cesium
Convert (small) OSM extracts to .gltf for display in CesiumJS

0. Assuming Ubuntu 16.04...
1. bash get_dependencies.sh
2. bash osm2cesium.sh

Limitations:

1. Need to manually input coordinates into Cesium
2. The gltf model is slightly off
3. Need to figure out a streaming process to stream cached models to a Cesium client. Should precache it all.
4. Some missing structures (compare to an underlying basemap, just need to select more with osmosis)
5. No clamp to ground (may be possible with OSM2World elevation calculation and SRTM2OSM (or see http://extract.bbbike.org/?format=srtm.osm.pbf#)
6. Textures
