
**Checkpoint 3: Identify Cloud Infrastructure Components**

## 1. Compute Resources

Compute resources refer to the CPU and RAM that perform processing tasks, such as running programs and executing calculations.

Cloud providers allow organizations to rent compute power instead of purchasing physical servers, and this power can be scaled up or down depending on demand.

The `nproc` and `free -h` commands showed that the environment has one CPU core and approximately 1.9 GiB of RAM. This is not a physical machine but a small virtualized slice of a larger system, which reflects how compute resources are typically allocated in cloud computing.

## 2. Storage Resources

Storage resources are responsible for retaining data permanently, even after the system is restarted or shut down.

Reliable storage is essential for businesses to keep their files, databases, and system data secure without risk of loss. Cloud providers typically offer different storage types depending on the use case, such as storage for frequently accessed files versus storage for long-term backups.

The `df -h` command identified several disks attached to the system, including `/dev/vda1` with 19G of total space, along with `/dev/vda15` and `/dev/vda16` used for `/boot` and `/boot/efi`. These function as virtual storage volumes attached to the virtual machine, similar to how storage volumes are attached to instances in real cloud platforms.

## 3. Networking Resources

Networking resources enable systems to connect and communicate with one another and with the internet.

Networking is essential because it allows servers to interact with users and other systems. It is also the layer where security measures such as firewalls and private networks are implemented, making it critical for protecting cloud infrastructure from unauthorized access.

The `hostname` and `hostname -I` commands showed that the machine is named "ubuntu" and has two internal IP addresses, 172.30.1.2 and 172.17.0.1. This indicates that the machine operates within an internal virtual network, which is a small scale example of what a Virtual Private Cloud (VPC) provides in real cloud platforms.

## 4. Operating System

The operating system manages the underlying hardware and provides the platform on which applications run.

The operating system is the layer that engineers configure directly, including installing software, applying updates, managing permissions, and troubleshooting issues. The choice of operating system can also affect cost, since some require licensing fees while Linux distributions are typically free and open source.

The `cat /etc/os-release` and `uname -r` commands confirmed that the environment runs Ubuntu 24.04.4 LTS with kernel version 6.8.0-136-generic. Linux based systems such as Ubuntu are commonly used as base images for virtual machines across most major cloud providers.
