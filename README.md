# osm2cesium
Convert (small) OSM extracts to .gltf for display in CesiumJS

Download pbf
osmosis to extract only buildings (osmosis --read-pbf file=*.osm.pbf --tf accept-ways "building=*" --write-pbf file=buildings.osm.pbf (<10s)

(Set the Xmx in the top of the osm2world.sh script)
./osm2world.sh -i ../buildings.osm.pbf -o test.obj --config *.properties
properties terraincolor is #FFFFFFFF
git clone https://github.com/AnalyticalGraphicsInc/OBJ2GLTF.git

install node v6.2.2
npm install
node bin/obj2gltf.js test.obj model.gltf

Crank up the diffuselight and ambient light in fragmentShader0.glsl

display

