# Docker Compose Guide

This guide documents the `docker-compose.yml` file used to deploy a private Nextcloud cloud storage system backed by a MariaDB database.

## The Compose File

```yaml
version: '3'

services:
  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user

  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
```

## What does the `services:` block do?

The `services:` block lists every container that makes up the application. Each entry under it describes one container: which image it runs, which ports it publishes, and which environment variables it receives. In this file there are two services:

- **`database`** runs the `mariadb:10.6` image and creates the database (`nextcloud_db`), user (`nextcloud_user`), and passwords from its environment variables.
- **`app`** runs the `nextcloud` image, publishes port 8080 on the host to port 80 in the container (`8080:80`), and receives the credentials it needs to connect to the database.

When `docker-compose up -d` runs, Compose reads this block and creates, networks, and starts all of the listed containers together.

## How did the Nextcloud app container find the database container?

It found it through the `MYSQL_HOST=database` environment variable. Compose automatically places all services in the file on one shared network and registers each service name as a DNS hostname. Because the database service is named `database`, the Nextcloud container can reach it by using `database` as the host name, with no IP address needed.

The other variables (`MYSQL_DATABASE`, `MYSQL_USER`, and `MYSQL_PASSWORD`) must match the values set on the database service so Nextcloud logs in with the credentials MariaDB was created with. This is why the setup page showed an "Autoconfig file detected" message: Nextcloud pre-filled its setup form from these variables.

## What is the difference between `docker run` and `docker-compose up -d`?

`docker run` starts a single container from flags you type each time, while `docker-compose up -d` reads a `docker-compose.yml` file and starts every container in it, with a shared network, in one repeatable command.

