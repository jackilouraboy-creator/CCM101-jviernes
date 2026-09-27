# Reflection

Object storage is better suited for storing millions of photos compared to a traditional block storage hard drive because it is designed to scale horizontally across many servers instead of being limited by the capacity of a single volume. Block storage works well for structured data that a single application reads and writes frequently, such as a database, but it becomes inefficient once the number of files grows into the millions. Object storage instead treats each photo as an independent object bundled with its own metadata and a unique object ID, which makes it far easier to store, retrieve, and organize massive amounts of unstructured data at scale.

Using Docker made deploying the MinIO storage server much easier because the entire application and its dependencies came packaged inside a single image. Instead of manually installing an object storage server on the operating system, I only needed to run one docker command that pulled the image, mapped the API and console ports, and set the login credentials through environment variables. Even when I ran into an issue where my first image was no longer available, and another issue where the web console stayed disabled by default, Docker made it simple to remove the old container and redeploy a new one with a single corrected command, instead of reinstalling anything from scratch.

In the context of cloud storage, a bucket is a logical, flat container used to store objects. Unlike a traditional folder, a bucket does not use a branching directory tree. Instead, every object inside it is identified by a unique object key, and the bucket name itself becomes part of the web URL used to access the data it holds.

Large enterprise companies protect their object storage data through replication and erasure coding, which distributes data and parity blocks across multiple physical drives or servers, so the system can reconstruct missing data even if one server fails.

My confidence in the Linux command line is growing steadily. Working through the pull errors and container logs on my own, instead of giving up, made me more comfortable reading terminal output and troubleshooting problems as they came up.
