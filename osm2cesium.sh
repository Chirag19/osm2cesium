wget http://download.geofabrik.de/europe/azores-latest.osm.pbf
osmosis --read-pbf file=azores-latest.osm.pbf --tf accept-ways "building=*" --write-pbf file=buildings.osm.pbf
osm2world/./osm2world.sh -i buildings.osm.pbf -o test.obj --config prop.properties
mkdir output
node OBJ2GLTF/bin/obj2gltf.js test.obj output/model.gltf

LATITUDE=$(grep "Coordinate" test.obj | cut -d " " -f 6 | cut -d "," -f 1)
LONGITUDE=$(grep "Coordinate" test.obj | cut -d " " -f 8 | cut -d "," -f 1)

sudo sed -i '/fromDegrees/c\Cesium.Cartesian3.fromDegrees($LONGITUDE,$LATITUDE,0));' /var/www/html/cesium/Apps/demo.html

sudo cp -R output /var/www/html/cesium/Apps/SampleData/
sudo chown -R www-data:www-data  /var/www/html/cesium/Apps/SampleData/output

echo "Open your browser and go to: localhost/cesium/Apps/demo.html"



