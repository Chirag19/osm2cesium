# osm2cesium

Sample NewYork extract is © OpenStreetMap contributors (https://www.openstreetmap.org/copyright http://opendatacommons.org/licenses/odbl/)

Convert (small) OSM extracts to .gltf for display in CesiumJS

1. Assuming Ubuntu 16.04...
2. bash get_dependencies.sh
3. bash osm2cesium.sh

Make sure the resulting model is less than 5 MB or so. Not sure what the .gltf limit is in CesiumJS. Otherwise it will not display

If you find it too dark, manually open the resulting fragmentShader0.glsl and modify the diffuseLight and ambientLight vectors to both be (0.9,0.9,0.9)

Major components:

* OSM2World - http://osm2world.org
* OBJ2GLTF - https://github.com/AnalyticalGraphicsInc/OBJ2GLTF
* Cesium - https://cesiumjs.org/
* OpenStreetMap - http://openstreetmap.org



Limitations:

1. Need to manually input coordinates into Cesium
2. The gltf model is slightly off-registered with underlying basemaps
3. Need to figure out a streaming process to stream cached models to a Cesium client. Should precache it all.
4. Some missing structures and parts of buildings(compare to an underlying basemap or osm2world pngs, just need to select more with osmosis)
5. No clamp to ground (may be possible with OSM2World elevation calculation and SRTM2OSM or see http://extract.bbbike.org/?format=srtm.osm.pbf# or download srtm and give a directory in prop.properties)
6. Textures
7. Consider other features like trees, roads, etc (but this complicates elevation calc, takes longer, makes gltf models much larger)
