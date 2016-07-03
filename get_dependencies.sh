# Works on Ubuntu 16.04 at least

sudo apt-get install osmosis nodejs python-virtualenv python-pip # You may need a later version of nodejs if you run into a "Method not found error"
git clone https://github.com/tordanik/OSM2World.git
git clone https://github.com/AnalyticalGraphicsInc/OBJ2GLTF.git
virtualenv ~/venv
source ~/venv/bin/activate
pip install mercantile
