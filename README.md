# openhab3-BOM-program
OpenHab3 BOM weather forecasts that uses NO thing and only ONE item.
There is already a BOM add-on for openhab and I have used it and it is good but I didn't want to have
another 90 plus items created just to use it.
What I have attempted to do is use one item and put all the weather forecast for your location into that 
as json format and then just pull out the data we want to use.

What this doesn't do is have the latest temperature etc.
It will just display the forecast for the next 7 days.
Nothing flash....if you want all the other bells and whistles then go and grab the other BOM add-on.

Basically this is what needs to be done.

Create a string item call it BOMdata that way you can use the examples I will put up here.

Run a bash script (supplied) to grab the icons from the BOM and remove the dashes in the icon names and replace
them with underscores because in Openhab an icon with a dash in it is a special icon. 
For example if the icon was called light-showers the icon that you would get is a light bulb.
If the icon has been renamed to light_showers then you get the correct icon.

Create a rule to go to the BOM website and get the json forecast data for your location. This rule has to be an ECMA 262 5.1 edition rule and ot the new one that OH3 has now.

Create pages or whatever you like and display the data.

This is my first attempt at github, so bear with me.

The instructions will be in the wiki.


