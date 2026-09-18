# Checkpoint 7 - Mission Reflection

The difference in setup time between a VM and a Docker container is honestly the first thing that stood out to me. Installing an OS on a VM means booting a bootloader, letting the operating system initialize, and often walking through a setup wizard before anything useful can run, a process that easily eats several minutes. A Docker container skips almost all of that because it doesn't boot an OS at all, it shares the host's kernel and just starts the application process directly. That's why pulling and running Nginx took seconds instead of the 15 minutes a VM-based setup might require.

Port mapping matters because a container's network is isolated from the host by default. Nginx inside the container listens on port 80, but that port exists only inside the container's own network namespace, it isn't automatically reachable from outside. The `-p 8080:80` flag builds a bridge, forwarding traffic that hits port 8080 on the host machine into port 80 inside the container. Without that mapping, there'd be no way to actually reach the web server from a browser or curl command on the host.

Running `docker rm` deletes the container itself, including its writable layer, which means any data written inside the container during its life is gone unless it was stored somewhere external, like a mounted volume or bind mount. The underlying image used to create the container is untouched, but the container's own state doesn't survive removal.

Containerization changes DevOps collaboration by shrinking the gap between "it works on my machine" and "it works in production." Since a container packages the app with its exact dependencies, developers and operations teams are working with the same artifact from local development through deployment, which cuts down on environment-related bugs and makes releases faster and more predictable. 

My GitHub portfolio is steadily turning into a real record of hands-on cloud work, this lab adds container deployment and lifecycle management to what was previously just VM and multi-cloud evaluation experience.
