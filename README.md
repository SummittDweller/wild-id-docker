# Based on...
https://stackoverflow.com/questions/35061746/run-jar-file-in-docker-image

## Build your image:
`docker build -t summittdweller/wild-id .`

## Now invoke your program inside a container:
`docker run --name wild-id summittdweller/wild-id`

## Now restart your program by restarting the container:
`docker restart wild-id`

## Your program changed? Rebuild the image!:
`docker rmi summittdweller/wild-id`
`docker build -t summittdweller/wild-id .`
