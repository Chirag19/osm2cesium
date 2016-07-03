wget http://download.bbbike.org/osm/bbbike/Zuerich/Zuerich.osm.pbf
osmosis --read-pbf file=Zuerich.osm.pbf --tf accept-ways "building=*" --write-pbf file=buildings.osm.pbf
OSM2World/./osm2world.sh -i buildings.osm.pbf -o test.obj --config prop.properties
mkdir output
node OBJ2GLTF/bin/obj2gltf.js test.obj output/model.gltf

echo "Make sure the resulting model is less than 5 MB or so. Not sure what the .gltf limit is in CesiumJS"
echo "Manually open the resulting fragmentShader0.glsl and modify the diffuseLight and ambientLight vectors to both be (0.9,0.9,0.9)
