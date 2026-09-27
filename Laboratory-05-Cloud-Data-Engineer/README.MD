# Laboratory Activity 5: The Cloud Data Engineer

## Mission Overview
This laboratory activity focused on understanding the differences between
block, file, and object storage, then deploying an S3 compatible object
storage server using Docker. I originally planned to use the official
MinIO image, but had to adapt my approach after discovering it was no
longer available on Docker Hub. I deployed a working alternative, accessed
its web console, created a storage bucket, and uploaded a file to prove
the system worked as a proof of concept for a photo sharing application.

## Objectives
- Differentiate between Block, File, and Object Storage
- Deploy an S3 compatible Object Storage server using Docker
- Access a cloud service via a web interface using port forwarding
- Create a storage bucket and upload objects to the cloud
- Document cloud storage operations using Markdown
- Continue expanding a professional GitHub Cloud Computing Portfolio

## Tools Used
- Docker
- MinIO (deployed through the bitnamilegacy/minio image)
- KillerCoda Playground
- GitHub

## Skills Learned
I learned how to deploy a containerized storage service with multiple
mapped ports, and how to set environment variables inside a Docker
container to configure Access Key and Secret Key credentials. I also
learned how to troubleshoot a real deployment issue when the original
image I needed became unavailable, and how to read container logs using
docker logs to figure out why a service was not responding as expected.
On top of that, I learned that some container images disable certain
features by default, such as the MinIO web console, and that reading
documentation carefully is necessary to enable them. Finally, I practiced
creating a storage bucket and uploading files through a graphical
interface.
