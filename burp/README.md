#Burpsuite Free Docker Container

Just a quick automated build of [Burpsuite Free](https://portswigger.net)

to get GUI programs running from docker you'll need to get the xhost access control sorted before running the command.
for example with something like xhost +local:root.

If you want to be able to get data in/out of the container easily, add another volume declaration to the command below

Command to run is

```
docker run -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=$DISPLAY -p 8080:8080 -it raesene/burp-free
```


!!!DANGER DANGER WILL ROBINSON!!!

The cacert for this burp install is contained in the prefs.xml file, so it will be the same for every person running it.  You should regenerate a prefs.xml file (just download and run burp and look in [home]/.java/.userPrefs/burp/) and add it to the Docker image if you're using this in production.