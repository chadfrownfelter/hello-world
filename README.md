# hello-world

This is a tiny Docker image that gives http responses on a designated port (default: 8000).

While there are plenty of scenarios to customize this, my goal is to keep this a small as 
possible to reduce time on feedback loops and have speedier deploys.

## Sample Usage

### Starting a web server on port 80

```bash
docker run -d --rm --name web-hello-world -p 80:8000 chadfrownfelter/hello-world
```

### Running the container on a port other than default
```bash
docker run -d --rm --name web-hello-world -e PORT=3000 -p 80:3000 chadfrownfelter/hello-world
```
