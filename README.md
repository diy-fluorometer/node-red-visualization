# node-red-visualization

## Installation

* Install <a href="https://mosquitto.org/">mosquitto</a> including mosquitto_pub and mosquitto_sub
* Place mosquitto.conf in /etc/mosquitto/
* Install <a href="https://nodered.org/">Node-RED</a>
* Place node-red-config.json in ~/.node-red/ (overwrite the existing config-JSON)

## Usage

* Connect the fluorometer to it's power supply
* Connect your computer to the fluorometer's wifi
* Make sure, the IP network is 192.168.4.x, otherwise adjust the scripts
* Start mosquitto
* Start ./publisher.sh to continuously read fluorometer values
* Optionally, start ./subscribe to check, if the publishing is working
* Start node-red
* Open Node-RED in a browser to see the data flow
* In Node-RED click View -> Dashboard and open the dashboard to see the graph

## License

The content of this repository is published
under the terms and conditions of the GNU Affero GPL.
