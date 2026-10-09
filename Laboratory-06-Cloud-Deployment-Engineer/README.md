# Laboratory 06 — The Cloud Deployment Engineer

## Mission Overview

In this mission I moved from running single containers with `docker run` to deploying a complete multi-tier application with Docker Compose. Using one `docker-compose.yml` file, I defined a private cloud storage system made of two containers, a MariaDB database and a Nextcloud web application, and started the whole stack with a single command. I then opened Nextcloud through port 8080 on KillerCoda and shut everything down with one command. The scenario was a university client that wants to host its own private cloud storage instead of paying for a public service.

## Objectives

- Explain the concept of a multi-tier application architecture.
- Understand the purpose and structure of a `docker-compose.yml` file.
- Use `nano` to create configuration files from the command line.
- Deploy a multi-container application (Nextcloud + MariaDB) with Docker Compose.
- Document deployment procedures and Infrastructure as Code (IaC) principles in Markdown.
- Continue building my GitHub Cloud Computing Portfolio.

## Commands Executed

```bash
mkdir nextcloud-deployment      # create the project directory
cd nextcloud-deployment         # move into the project directory
nano docker-compose.yml         # create the Compose file
docker-compose up -d            # pull images and start the stack in the background
docker-compose ps               # confirm both containers are running
docker-compose down             # stop and remove the containers and network
```



## Skills Learned

- Describing a two-tier architecture and why its tiers are kept in separate containers
- Writing space-sensitive YAML by hand in `nano`
- Defining multiple services in a single Compose file
- Deploying and removing a full stack with `docker-compose up -d` and `docker-compose down`
- Configuring containers with environment variables
- Connecting containers by service name (`MYSQL_HOST=database`)
- Reaching a containerized app through a mapped port (`8080:80`)
- Documenting infrastructure with Markdown and Git as part of a GitHub portfolio
