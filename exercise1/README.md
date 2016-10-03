## Purpose

This exercise has the user build a container that simply outputs the hostname to a static `index.html` file.

This is useful for deploying a service in Rancher and seeing the effects of load balancing and scale.

### Usage

#### Building and testing your own container
```
# After copying the files in exercise1 folder, navigate to the folder and build a Docker image based on the Dockerfile.
exercise1 $ docker build --rm -t nginx-web-tier:latest .

# After the image is created, test the image by running a container. This command will expose port 80 on your host IP.
$ docker run -d -p 80:80 nginx-web-tier:latest

# Visit the Docker host IP port 80 and verify you see a hostname.
```

#### Creating the container using docker-compose.yml and rancher-compose.yml files in Rancher

Follow the instructions to configure your [Rancher CLI](http://docs.rancher.com/rancher/v1.2/en/cli/#configuring-the-rancher-command-line-interface).

```
# Using the docker-compose.yml and rancher-compose.yml files in the exercise1 folder, create a service in Rancher.
$ rancher up -d -f /path/to/docker-compose.yml --rancher-file  /path/to/rancher-compose.yml --stack exercise1
```

### Things to note

Once the service comes up, you can visit the ip/port. As a user, you will see that the page loads with the container name. As the scale is increased, the user will see multiple container names when reloading the page.
