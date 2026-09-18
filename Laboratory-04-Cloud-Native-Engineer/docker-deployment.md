## Checkpoint 3: Verify Docker

**Commands run:**

docker --version

docker info

**Output summary:**
- `docker --version` → `Docker version 29.1.3, build 29.1.3-0ubuntu3-24.04.2`
- `docker info` → confirms the daemon is live: Server Version 29.1.3, Storage Driver overlay2, Cgroup Driver systemd, 1 image already present, 0 containers running, on Ubuntu 24.04.4 LTS.

**Explanation of each command:**
- `docker --version` verifies that Docker is installed by printing the installed CLI version.
- `docker info` checks the current status of the Docker environment, showing the daemon's live state: containers running, images stored, storage driver, cgroup driver, and OS details, confirming the environment isn't just installed but actively running.

