dockerized-kiwix-server
=================

Updated version of the original [jasiek/dockerized-kiwix-server](https://github.com/jasiek/dockerized-kiwix-server) with input from the [jonboiser/dockerized-kiwix-server](https://github.com/jonboiser/dockerized-kiwix-server) fork.

## Step 1: Build the Docker container

Clone this repo and run the following in the directory:

```shell
docker build -t kiwix-serve-image .
```

## Step 2: Download ZIM files

Download any ZIM content files from <http://www.kiwix.org/wiki/Content>.
Place content files in `/path/to/zims`.

## Step 3: Run the container

This starts the container and the Kiwix server, and makes it available on your machine at `http://localhost:8080`.

```shell
docker run -d --name kiwix-serve -v /path/to/zims:/zims -p 8080:8080 kiwix-serve-image
```

To stop the container:

```shell
docker stop kiwix-serve
```

## Step 4: Try it out in the browser

Go to http://localhost:8080.