[![Docker Build on Release and Schedule](https://github.com/chadfrownfelter/hello-world/actions/workflows/publish.yml/badge.svg)](https://github.com/chadfrownfelter/hello-world/actions/workflows/publish.yml)

# hello-world

This is a tiny Docker image that gives http responses on a designated port (default: 8000).

While there are plenty of scenarios to customize this, my goal is to keep this a small as 
possible to reduce time on feedback loops and have speedier deploys.

This was heavily inspired by https://github.com/crccheck/docker-hello-world

## Sample Usage

### Starting a web server on port 80

```bash
docker run -d --rm --name web-hello-world -p 80:8000 chadfrownfelter/hello-world
```

### Running the container on a port other than default
```bash
docker run -d --rm --name web-hello-world -e PORT=3000 -p 80:3000 chadfrownfelter/hello-world
```
## Output

### CLI
```bash
curl localhost:80

<link rel="icon" href="data:,">
<pre>
Hello World


                                       ##         .
                                 ## ## ##        ==
                              ## ## ## ## ##    ===
                           /""""""""""""""""\___/ ===
                      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
                           \______ o          _,/
                            \      \       _,'
                             `'--.._\..--''
</pre>

```

### Browser
<img width="620" height="296" alt="hello-world-browser" src="https://github.com/user-attachments/assets/545492b1-9514-41a6-8ee4-cf2d61e6b393" />
