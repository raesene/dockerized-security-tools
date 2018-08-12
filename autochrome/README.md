Docker AutoChrome
--

Based on the [NCC AutoChrome project](https://github.com/nccgroup/autochrome) this docker image is designed to provide a useful testing browser setup for security reviews alongside a proxy.

To run this, you'll need the chrome.json seccomp profile (from [JessFraz's setup](https://github.com/jessfraz/dockerfiles/blob/master/chromium/Dockerfile)) and then rum something like the command below

`docker run --security-opt seccomp=[chrome.json location here] --name autochrome -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v /dev/shm:/dev/shm debian-autochrome`


TODO
--

At the moment this won't set itself up with a proxy.  Next steps wil be to get burp working and create a Docker compose file which sets both up together.