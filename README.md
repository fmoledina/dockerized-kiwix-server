dockerized-kiwix-server
=================

Updated version of the original [jasiek/dockerized-kiwix-server](https://github.com/jasiek/dockerized-kiwix-server) with input from the [jonboiser/dockerized-kiwix-server](https://github.com/jonboiser/dockerized-kiwix-server) fork.

## Step 1: Download ZIM files

Download any ZIM content files from <http://www.kiwix.org/wiki/Content>.
Place content files in `/path/to/zims`.

## Step 2: Build and run the Docker container

### Using docker-compose

Download the docker-compose.yml file from this repo, and make edits for paths and ports as necessary.

Start the container and the Kiwix server, and make it available on your machine at `http://localhost:8080` by default:

```shell
docker-compose up -d
```

To stop the container:
```shell
docker-compose down
```

### Using Docker directly

Clone this repo and run the following in the directory:

```shell
docker build -t kiwix-serve-image .
```

Starts the container and the Kiwix server:

```shell
docker run -d --name kiwix-serve -v /path/to/zims:/zims -p 8080:8080 kiwix-serve-image
```

To stop the container:

```shell
docker stop kiwix-serve
```

## Step 3: Try it out in the browser

Go to http://localhost:8080.