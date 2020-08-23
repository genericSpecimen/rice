## Docker commands reference
      
### Basic info
`sudo docker info`

### List images
`sudo docker images`

### List all (-a) containers
`sudo docker ps -a`

### List containers
`sudo docker containers ls`

### Running a container derived from a base image
`sudo docker run hello-world`

### Pull an image and run a container derived from the image
`sudo docker pull linuxserver/qbittorrent`
`sudo docker run linuxserver/qbittorrent`


### Publish / expose ports
* bind :8080 of the container to the host's 8080:
`sudo docker run -p 8080:8080 qbittorrent`
* detached mode
`sudo docker run -d -p 8080:8080 linuxserver/qbittorrent`

### Run a new command in a running container
Here we run an interactive bash tty:
`sudo docker exec -it linuxserver/qbittorrent /bin/bash`

### Display a live stream of container(s) resource usage statistics
`sudo docker container stats`

### Fetch logs of a container
`sudo docker logs -f ea250ee4b2d0`

### Define and run multi-container applications (defined in docker-compose.yml)
* Create and start containers
`sudo docker-compose up`
* detached mode
`sudo docker-compose up -d`

### Remove all stopped containers
`sudo docker container prune`

### Stop specified containers
`sudo docker container stop ea250ee4b2d0`
`sudo docker container stop qbittorrent`

### List networks
`sudo docker network ls`

### Display detailed information on one or more networks
`sudo docker network inspect bridge`
`sudo docker network inspect xubuntuvm_default`

### Copying files to and from containers
If you don't have any text editors installed in the container and want to modify a file, one alternative is to copy the file from the container, edit it on the host, and then move it back to the container
`sudo docker cp 2f8f8292279c:/config/data/qBittorrent/nova3/engines/jackett.json .`
`sudo docker cp jackett.json 2f8f8292279c:/config/data/qBittorrent/nova3/engines/jackett.json`

### Lots of low-level information on Docker objects
`sudo docker inspect qbittorrent`

### IP address of container
* `sudo docker inspect qbittorrent | grep IPAddress`
* only IP: `sudo docker inspect qbittorrent | grep IPAddress | tail -n1 | cut -d '"' -f 4`


### Stop specific containers
`sudo docker container stop bf424149bd34 2f8f8292279c b627034da7ff`

### Display only numeric IDs, useful for stopping all of the containers at once
`sudo docker ps -aq`
`sudo docker container stop $(sudo docker ps -aq)`

### Other notes:
* When using ```sudo docker-compose up```, make sure to manually create binded volumes using the user id (1000) to avoid permission errors. Otherwise, the directories created will be owned by root.

* Instead of using `localhost` or IP addresses like `192.168.1.7` in application specific setup, use the ip address of the docker container, or the container's name.
eg: `http://jackett:9117/...`, where jackett is a container name.

