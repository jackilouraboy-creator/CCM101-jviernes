# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A two-tier architecture divides an application into two layers, each with its own job, that communicate over a network. In this lab, the layers are the **web/application tier** (Nextcloud) and the **database tier** (MariaDB), each running in its own container.

## The Web/Application Tier

This is the layer users interact with. It serves the user interface, receives and handles HTTP requests, runs the application logic (such as logins, file uploads, and sharing), and requests data from the database when needed. In this deployment, the Nextcloud container fills this role and is reached through port 8080.

## The Database Tier

This layer stores persistent data, meaning information that must remain after a request ends, such as user accounts, credentials, file metadata, and settings. Users never access it directly; only the application tier connects to it. In this deployment, the MariaDB container fills this role.

## Why Separate Them?

Running the web server and database in separate containers lets each one be updated, restarted, or scaled without affecting the other. It also improves security because the database doesn't have to be exposed to the outside world, and it makes troubleshooting simpler since a problem can be traced to one specific container. Packing both into a single container would tie their lifecycles together and make the system harder to maintain.
