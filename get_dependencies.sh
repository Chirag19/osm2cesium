# Works on Ubuntu 16.04 at least

sudo apt-get install osmosis nodejs python-virtualenv python-pip apache2 # You may need a later version of nodejs if you run into a "Method not found error"
wget http://cesiumjs.org/releases/Cesium-1.23.zip
mkdir cesium
unzip Cesium-1.23.zip -d cesium
sudo cp -R cesium /var/www/html/
git clone https://github.com/tordanik/OSM2World.git
git clone https://github.com/AnalyticalGraphicsInc/OBJ2GLTF.git
virtualenv ~/venv
source ~/venv/bin/activate
pip install mercantile
