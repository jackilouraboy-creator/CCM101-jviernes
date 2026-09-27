# Laboratory Activity 4: The Cloud-Native Engineer

## Mission Overview
This laboratory activity focused on understanding the shift from traditional
virtualization to containerization. I deployed a live containerized Nginx
web server using Docker on the KillerCoda Playground and documented each
step of the process.

## Objectives
- Differentiate between Virtual Machines and Containers
- Access a Docker enabled cloud environment using KillerCoda
- Execute fundamental Docker CLI commands
- Pull, run, manage, and terminate a containerized Nginx application
- Create technical documentation of container operations in Markdown
- Continue building a well organized GitHub Cloud Computing Portfolio

## Docker Commands Executed
```
docker --version
docker info
docker pull nginx
docker run -d -p 8080:80 nginx
curl http://localhost:8080
docker ps
docker stop 973453f09a76
docker ps -a
docker rm 973453f09a76
```


## Skills Learned

- The practical, not just theoretical, difference between VM and container architecture.
- How to pull and run a containerized application from Docker Hub.
- How port mapping connects a host machine to a service running inside a container.
- How to manage a container's full lifecycle: list, stop, verify, and remove.
- How to document technical work clearly enough for someone else to reproduce it.

## Challenges Encountered

- Getting comfortable with detached mode (`-d`) and understanding that the container keeps running in the background until it's explicitly stopped.
- Remembering that stopping a container isn't the same as removing it, and that `docker rm` deletes the container's data unless it's stored in a volume.
- Realizing that `localhost:8080` only worked from inside the KillerCoda terminal (via `curl`), not from my own browser, since the container was running on a remote machine, not my local computer.
