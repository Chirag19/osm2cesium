# osm2cesium

Sample New York extract included is © OpenStreetMap contributors (https://www.openstreetmap.org/copyright http://opendatacommons.org/licenses/odbl/)

![Sample image of New York](https://raw.githubusercontent.com/stirringhalo/osm2cesium/master/sample2.png)

Convert (small) OSM extracts to .gltf for display in CesiumJS

1. Assuming Ubuntu 16.04...
2. bash get_dependencies.sh
3. bash osm2cesium.sh
4. Go to http://localhost/cesium/Apps/demo.html and search for "NewYork"

Make sure the resulting model is less than 5 MB or so. Not sure what the .gltf limit is in CesiumJS. Otherwise it will not display

If you find it too dark, manually open the resulting fragmentShader0.glsl and modify the diffuseLight and ambientLight vectors to both be (0.9,0.9,0.9)

Major components:

* OSM2World - http://osm2world.org
* OBJ2GLTF - https://github.com/AnalyticalGraphicsInc/OBJ2GLTF
* Cesium - https://cesiumjs.org/
* OpenStreetMap - http://openstreetmap.org

Major steps:
1. Extract buildings from original OSM pbf
2. Run osm2world to generate obj
3. Run obj2gltf to generate gltf
4. Extract coordinates from obj
5. Build Cesium demo

Limitations:

1. Need to manually input coordinates into Cesium (for now extracted from obj, statically setup in demo)
2. The gltf model is slightly off-registered with underlying basemaps
3. Need to figure out a streaming process to stream cached models to a Cesium client. Should precache it all. Need a webserver to receive tile requests like in TMS/XYZ format, grab cached gltf with coordinates and send back to Cesium. Selecting tiles may be based on distance to camera/FOV/something
4. Some missing structures and parts of buildings(compare to an underlying basemap or osm2world pngs, just need to select more with osmosis, not sure why missing parts of buildings)
5. No clamp to ground (may be possible with OSM2World elevation calculation and SRTM2OSM or see http://extract.bbbike.org/?format=srtm.osm.pbf# or download srtm and give a directory in prop.properties)
6. Textures
7. Consider other features like trees, roads, etc (but this complicates elevation calc, takes longer, makes gltf models much larger)
8. Lighting isn't working very well/at all
