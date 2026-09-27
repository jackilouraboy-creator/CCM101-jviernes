#  Checkpoint 2 - Research: Types of Cloud Storage

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Data is broken into fixed sized blocks, each with a unique identifier, and delivered as a raw unformatted volume that the operating system must format and manage | Boot volumes and performance intensive workloads such as transactional relational databases that need fast, continuous read and write operations | Amazon EBS |
| File Storage | Data is stored as files inside a hierarchical folder structure, accessed over the network through protocols such as NFS or SMB | Shared directories and applications where multiple servers or users need to read and write the same files at the same time | Amazon EFS |
| Object Storage | Data is stored in a flat structure called a bucket, with each object bundled together with metadata and a unique object ID, accessed through HTTP and RESTful APIs such as the S3 protocol | Large volumes of unstructured data such as website images, streaming media, and backups that need to scale to petabytes | Amazon S3 |

## Explanation to the client explaining why Object Storage is the best choice for storing their user-uploaded images.

Object Storage is the best choice for the client's user uploaded images because it abandons the traditional folder hierarchy in favor of a flat, infinitely scalable bucket structure that can hold massive amounts of unstructured data. Each image is stored as an object with its own metadata and unique object ID, which can be retrieved directly through a simple HTTP request using the S3 protocol. This makes object storage far more scalable and cost effective for millions of images than block or file storage, which are better suited for database volumes and shared network files.
