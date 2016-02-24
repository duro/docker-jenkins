# docker-jenkins

A Dockerized simple Jenkins server with the following plugins

* git
* github-oauth
* ghprb (Git Hub Pull Request Building)
* greenballs
* environment-script
* slack

It has been setup to use the docker host that the Jenkins server is running on to be able to build other Docker based projects

## Getting started

1. Clone down repo
2. Edit the `JENKINS_HOSTNAME` in the `docker-compose.yml` to be the hostname of your Docker host
3. Run `make build`
4. Run `make run`
