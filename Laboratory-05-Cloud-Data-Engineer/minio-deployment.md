# Checkpoint 5 - Technical Documentation

## Docker Command Used
I used the following command to deploy my MinIO server:

docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
-e "MINIO_BROWSER=on" \
bitnamilegacy/minio:2025.7.23-debian-12-r5

## Note on Image Used
When I first tried running the command with the original minio/minio image given in the laboratory instructions, I got a pull access denied error.After looking into it, I found out that MinIO discontinued the official distribution of their Docker images, so the minio/minio repository is no longer accessible. To work around this, I switched to the bitnamilegacy/minio image instead, which still provides the same MinIO functionality. I also discovered that this image disables the web console by default, so I had to add the MINIO_BROWSER=on flag to enable it.

## Web Console Access
I accessed the MinIO web console through port 9001, which I mapped from the container to my host machine using the -p 9001:9001 flag in my docker run command.

## Bucket Created
I created a bucket named client-photos to store the sample file I uploaded for this laboratory activity.

## Explanation of the -e Flags
The -e flags in my command set environment variables inside the container as soon as it starts up.

- MINIO_ROOT_USER and MINIO_ROOT_PASSWORD acted as the initial Access Key and Secret Key for my MinIO server. I learned that MinIO does not use a typical username and password login screen for programmatic access. Instead, the Access Key identifies who or what application is making a request, while the Secret Key works like a cryptographically generated password that signs each request sent to the server.
- MINIO_BROWSER=on enabled the built in web console, since this particular image ships with the console turned off by default. Without this flag, the MinIO API would still run on port 9000, but the web interface on port 9001 would not respond.
