# Docker AgensBrowser

This is an image to run [AgensBrowser](http://bitnine.net/documentations/manual/agens_browser_manual_1.0_en.html) on Alpine Linux.


## Running the container 

To have AgensBrowser connect to a Postgres server, you will need to modify the `agens-browser.config.yml` file and bind it into the `/home/agens/agensbrowser` folder.

By default port 8085 is exposed, but can be mapped to another port on the host as seen below.

In the example below, we will utilize the `$(pwd)` command to reference an `agensbrowser` directory that contains a config file, and bind it in for use in the container. We will also use port 8778 on our the host to map into 8085 on the container.

`docker run -p8778:8085 --mount type=bind,src=$(pwd)/agensbrowser,target=/home/agens/agensbrowser sorrell/agensbrowser-alpine`

Once it's running, you should be able to access it via http://localhost:8778
