# osm2cesium
Convert (small) OSM extracts to .gltf for display in CesiumJS

1. Assuming Ubuntu 16.04...
2. bash get_dependencies.sh
3. bash osm2cesium.sh

Make sure the resulting model is less than 5 MB or so. Not sure what the .gltf limit is in CesiumJS. Otherwise it will not display
If you find it too dark, manually open the resulting fragmentShader0.glsl and modify the diffuseLight and ambientLight vectors to both be (0.9,0.9,0.9)



Limitations:

1. Need to manually input coordinates into Cesium
2. The gltf model is slightly off-registered with underlying basemaps
3. Need to figure out a streaming process to stream cached models to a Cesium client. Should precache it all.
4. Some missing structures (compare to an underlying basemap, just need to select more with osmosis)
5. No clamp to ground (may be possible with OSM2World elevation calculation and SRTM2OSM (or see http://extract.bbbike.org/?format=srtm.osm.pbf#)
6. Textures
