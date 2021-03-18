#!/bin/bash
#This grabs the icons that can be used in OH3
//wget http://www.bom.gov.au/images/symbols/large/sunny.png

cd /etc/openhab/icons/classic/

for ICON in storm sunny clear cloudy hazy light-rain wind fog showers rain dust frost snow light-showers heavy-showers partly-cloudy light-rain 
do
sudo wget -N http://www.bom.gov.au/images/symbols/large/$ICON.png
#read crap
done

#mostly-sunny is partly-cloudy so put both icons there
sudo cp partly-cloudy.png mostly_sunny.png
#wind is windy so put both icons there
sudo cp wind.png windy.png
#dust is dusty so put both icons there
sudo cp dust.png dusty.png
#light-showers is light-shower so put both icons there
sudo cp light-showers.png light-shower.png
#showers is shower so put both icons there
sudo cp showers.png shower.png

#dashes are not allowed in the sitemaps etc unless they are dynamic
#replace dashes with underscores. I have a rule that converts the dash to underscore 
#so I can use icons

sudo mv partly-cloudy.png partly_cloudy.png
sudo mv light-showers.png light_showers.png
sudo mv light-shower.png light_shower.png
sudo mv light-rain.png light_rain.png
sudo mv heavy-showers.png heavy_showers.png

sudo chown openhab:openhab *.png

