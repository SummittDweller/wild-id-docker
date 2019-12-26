# Based on...
https://stackoverflow.com/questions/35061746/run-jar-file-in-docker-image

## Build your image:
`docker build -t summittdweller/wild-id .`

## Now invoke your program inside a container:
```
docker run --name wild-id summittdweller/wild-id -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY  
```
## Now restart your program by restarting the container:
`docker restart wild-id`

## Your program changed? Rebuild the image!:
`docker rmi summittdweller/wild-id`
`docker build -t summittdweller/wild-id .`

# Hope This Works...
https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/

## Prep and Docker Run Command Becomes... In TERMINAL.app, Not iTerm2
```
docker build -t summittdweller/wild-id .
open -a XQuartz
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
docker run -d --name wild-id -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix summittdweller/wild-id
```

# Does NOT Work on My Mac...
https://forums.docker.com/t/still-not-sure-how-to-run-gui-apps-in-docker-containers/79103

```
  -v /tmp/.X11-unix:/tmp/.X11-unix \ # mount the X11 socket
  -e DISPLAY=unix$DISPLAY \ # pass the display
  --device /dev/snd \ # sound
```
