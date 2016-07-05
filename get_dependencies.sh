# Works on Ubuntu 16.04 at least

sudo apt-get install osmosis nodejs python-virtualenv python-pip apache2 git node # You may need a later version of nodejs if you run into a "Method not found error"
wget http://cesiumjs.org/releases/Cesium-1.23.zip
mkdir cesium
unzip Cesium-1.23.zip -d cesium
cp demo.html cesium/Apps/
sudo cp -R cesium /var/www/html/
wget http://osm2world.org/download/files/latest/OSM2World-latest-bin.zip
mkdir osm2world
unzip OSM2World-latest-bin.zip -d osm2world
git clone https://github.com/AnalyticalGraphicsInc/OBJ2GLTF.git
cd OBJ2GLTF
npm install
cd ..
