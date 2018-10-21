# Security Tool Docker Images

Some Docker images of security tools that I've used, based off a common base image (Ubuntu:18.04).  The idea is to help avoid the dependency mess that is so easy to get into with security tools which want a lot of specific libraries and software versions.

Using a common base image will help reduce disk space needed, Ubuntu:18.04 is used as it's well supported and will get updates for quite a while to come.

The Dockerfiles are then made available on [Docker Hub](https://hub.docker.com/r/raesene/) under my account.  

Periodic rebuilds are triggered for each build using [Microsoft Flow](https://flow.microsoft.com/en-us/) so that the images stay fresh.

## Play with Docker

For some of the images you can try things out in Play with Docker using the buttons below (you'll need a docker hub account to make this work)

 - Dradis - [![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/raesene/dockerized-security-tools/master/dradis/docker-compose.yml)
