# dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t mincloud1501/ubuntu .
	docker run -it --name u1 -e USER=mincloud1501 -e PASSWD=mincloud1501 mincloud1501/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        mincloud1501/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("mincloud1501" is username. )
```
	su - mincloud1501
```
To Rollback
```
    docker rm u1 -f
    docker rmi mincloud1501/ubuntu
```
