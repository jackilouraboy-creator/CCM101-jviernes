## Mission Overview
 
Congratulations,

Your onboarding has been successfully completed, and your Cloud Computing Portfolio has been approved by your supervisor.
CloudNova Technologies has now assigned you to your **first official project**

Before deploying cloud services, every cloud engineer must understand the infrastructure that powers modern cloud computing. Your mission is to investigate the components of cloud infrastructure, identify how compute, storage, networking, and identity services work together, and document your findings as if you were preparing technical documentation for a client.

Using the **KillerCoda Playground**, Linux tools, official cloud documentation, and your GitHub Cloud Computing Portfolio, you will complete a series of engineering tasks that simulate the planning phase of a cloud deployment.
Remember: **Great cloud engineers build systems—but exceptional cloud engineers document and justify every design decision**.

 
## Mission Objectives
 
At the end of this laboratory activity, you should be able to:
 
- Explain the major components of cloud infrastructure.
- Investigate the hardware and software resources available in a Linux environment.
- Differentiate compute, storage, networking, and identity resources.
- Interpret the relationship between cloud infrastructure components.
- Create professional technical documentation using Markdown.
- Continue building a structured GitHub Cloud Computing Portfolio.

## Cloud Infrastructure Components
 
Four core categories of cloud infrastructure were investigated and documented in `cloud-components.md`, based on the findings from the KillerCoda environment:
 
- **Compute Resources**: the CPU and RAM that run workloads. The environment provided 1 CPU core and approximately 1.9 GiB of RAM.
- **Storage Resources**: the disks that retain data even after a restart. The environment included `/dev/vda1`, `/dev/vda15`, and `/dev/vda16`.
- **Networking Resources**: the addressing and connectivity that let systems communicate. The environment was assigned the internal IP addresses 172.30.1.2 and 172.17.0.1.
- **Operating System**: the software layer that manages hardware and hosts applications. The environment ran Ubuntu 24.04.4 LTS.

## Tools Used
 
- **KillerCoda Playground**: cloud based Linux terminal environment used for hands on investigation.
- **Linux Terminal**: used to check the server's system information.
- **Official cloud documentation** accessing the Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP) cloud document. 
- **GitHub**: used to create activity work and organizing laboratory files
- **Web Browser**: for accessing KillerCoda, GitHub, and cloud documentation
- **Draw.io**: used to create the simple cloud architecture diagram for Checkpoint 5.

## Linux Commands Executed
 
| Purpose | Command |
|---|---|
| Operating System | `cat /etc/os-release` |
| Kernel Version | `uname -r` |
| CPU Model | `lscpu \| grep "Model name"` |
| Number of CPU Cores | `nproc` |
| Total RAM | `free -h` |
| Disk Capacity | `df -h` |
| Mounted File Systems | `mount \| column -t` |
| Hostname | `hostname` |
| IP Address | `hostname -I` |

## Skills Learned

Using core linux commands to explore the server hardware and OS.
Discovering the different types of cloud infrastructure like: Compute, Storage, Networking, Identity etc. and their relation to real-life counterparts.
Comparing AWS, Azure, GCP resources naming and structure and being able to reference official documentation.
Being able to write documentation in a clean way using Markdown for an engineering audience.
Having a portfolio in github presenting my cloud engineering skillset.

## Challenges Encountered

A challenge was that the output of commands like mount reveals a number of virtual and pseudo-filesystems that are not related to the underlying persistent storage units. In addition, several entries were specific to the kernel and required investigation to separate relevant information from the noise. A significant challenge was also researching and comparing the services of the three clouds because the same concept could have different names in different clouds, such identity and access management in AWS IAM, Microsoft Entra ID, and Google Cloud IAM, and different approaches to implementing the same concepts, such as Azure RBAC versus IAM policies. The solution was to study each cloud’s ecosystem and corresponding documentation to extract and compare the relevant information.
