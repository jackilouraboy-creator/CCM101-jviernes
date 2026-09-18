# Laboratory 04: Cloud-Native Engineer

## Mission Overview

Congratulations! After successfully guiding our clients through multi-cloud evaluations, you have been promoted to the **Cloud-Native Engineering Team** at CloudNova Technologies.
Modern cloud computing is no longer just about renting Virtual Machines (VMs) from AWS or Azure. Today's enterprise applications are built using lightweight, portable, and lightning-fast technologies called **Containers**. Your new mission is to understand the shift from traditional virtualization to containerization.
Using the KillerCoda Playground, you will step into the shoes of a Cloud-Native Engineer. You will research the differences between VMs and containers, execute your very first Docker commands, and deploy a live, containerized web server in seconds.

Remember: **A traditional system administrator manages servers, but a cloud-native engineer manages the services running on them.**

## Objectives

At the end of this laboratory activity, you should be able to:

- Differentiate between traditional Virtual Machines (VMs) and Containers.
- Access a Docker-enabled cloud environment using KillerCoda.
- Execute fundamental Docker CLI (Command Line Interface) commands.
- Pull, run, manage, and terminate a containerized application (Nginx).
- Create professional technical documentation of container operations using Markdown.
- Continue developing a well-organized GitHub Cloud Computing Portfolio.

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
