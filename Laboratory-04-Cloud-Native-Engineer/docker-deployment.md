## Checkpoint 3: Enter the Docker Playground

**Commands run:**

docker --version

docker info

**Output summary:**
- `docker --version` → `Docker version 29.1.3, build 29.1.3-0ubuntu3-24.04.2`
- `docker info` → confirms the daemon is live: Server Version 29.1.3, Storage Driver overlay2, Cgroup Driver systemd, 1 image already present, 0 containers running, on Ubuntu 24.04.4 LTS.

**Explanation of each command:**
- `docker --version` verifies that Docker is installed by printing the installed CLI version.
- `docker info` checks the current status of the Docker environment, showing the daemon's live state: containers running, images stored, storage driver, cgroup driver, and OS details, confirming the environment isn't just installed but actively running.

## Checkpoint 4: Deploy Your First Container

**Commands run:**

docker pull nginx

docker run -d -p 8080:80 nginx

curl http://localhost:8080


**Output summary:**
- `docker pull nginx` → downloaded all 7 image layers, `Status: Downloaded newer image for nginx:latest`.
- `docker run -d -p 8080:80 nginx` → started successfully, returned container ID `64d875e169d361679af51a3a1ba836913999065e8acb6e2f6736642ee6d257f8`.
- `curl http://localhost:8080` → returned the full "Welcome to nginx!" HTML page, confirming the server is live and reachable on port 8080.

**Explanation of each command:**
- `docker pull nginx` downloads the official Nginx image from Docker Hub.
- `docker run -d -p 8080:80 nginx` runs the container in detached (background) mode and maps port 8080 on the host to port 80 inside the container, where Nginx listens.
- `curl http://localhost:8080` sends an HTTP request to the container and confirms the web server responds correctly.

