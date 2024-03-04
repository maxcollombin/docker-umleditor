# Docker configuration for using umleditor

## Build the container

`docker run -it --rm umleditor-image`

## Start the container

`docker compose up -d`

## Run the application

`docker run -it --rm -e DISPLAY=host.docker.internal:0.0 -v /tmp/.X11-unix:/tmp/.X11-unix openjdk:11 java -jar umleditor.jar`

docker run -it --rm -e DISPLAY=host.docker.internal:0.0 -v /tmp/.X11-unix:/tmp/.X11-unix openjdk:11 java -jar umleditor/umleditor.jar