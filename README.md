# DOCKER-introR
A Dockerfile for MOD01-07 training i.e. introductory R training.

```
docker pull lockedata/docker-intror
docker run -p 80:8787 -d lockedata/docker-intror

Note: Docker instances now create a password as soon as you run it.
```

## About
- The DESCRIPTION file holds the package manifest of packages that will be available to attendees 
- The users.csv holds user names and passwords that can be used to access the Rstudio instance by attendees
- The sampleSQL.R file gets added to everyone's home directory so that they can start working with a DB easily
- mkusers.sh and odbcinstall.sh are setup bash scripts
- The Dockerfile contains any system dependencies, runs the setup scripts, and installs from the DESCRIPTION file to add R package dependencies

## Make your own version
- Fork the repo
- Create an automated build in hub.docker.com that points at your repo
- Amend the DESCRIPTION or other files
- Docker hub will build images with the latest committed changes for you to use in docker


