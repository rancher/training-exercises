## Purpose

This exercise has the user build a container that simply outputs the hostname to a static `index.html` file.

This is useful for deploying a service in Rancher and seeing the effects of load balancing and scale.

### Usage

```
exercise1 $docker build --rm -t nginx-web-tier:latest .

test:
docker run -d -p 80:80 nginx-web-tier:latest

visit docker host IP port 80 and verify you see a hostname.

Rancher(configure RANCHER_URL, RANCHER_ACCESS_KEY, and RANCHER_SECRET_KEY):

rancher up -d --stack exercise1
```

### Things to note

Once the service comes up you can visit the ip/port. As a user you will see that the page loads with the container name. As the scale is increased, the user will see multiple container names when reloading the page.
