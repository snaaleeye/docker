## What is Docker

<img width="655" alt="Screenshot 2022-07-04 at 12 03 02" src="https://user-images.githubusercontent.com/105854053/177196979-b961b600-cdf7-4cfd-a0f6-40e48fea44e4.png">


Docker is an open source platform that enables developers to build, deploy, run, update and manage containers—standardized, executable components that combine application source code with the operating system (OS) libraries and dependencies required to run that code in any environment.

Containers simplify development and delivery of distributed applications. They have become increasingly popular as organizations shift to cloud-native development and hybrid multicloud environments. It’s possible for developers to create containers without Docker, by working directly with capabilities built into Linux and other operating systems. But Docker makes containerization faster, easier and safer. At this writing, Docker reported over 13 million developers using the platform (link resides outside ibm.com).

Docker also refers to Docker, Inc. (link resides outside ibm.com), the company that sells the commercial version of Docker, and to the Docker open source project (link resides outside ibm.com) to which Docker, Inc, and many other organizations and individuals contribute.

https://www.ibm.com/cloud/learn/docker

## What is a container?

A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

## What is a container image?

Container images become containers at runtime and in the case of Docker containers – images become containers when they run on Docker Engine. Available for both Linux and Windows-based applications, containerized software will always run the same, regardless of the infrastructure. Containers isolate software from its environment and ensure that it works uniformly despite differences for instance between development and staging.

<img width="652" alt="Screenshot 2022-07-04 at 12 07 38" src="https://user-images.githubusercontent.com/105854053/177197021-b25ed7eb-2a0c-4548-b3c6-a0ef9087b308.png">

## Containerisation vs Virtualisation

In traditional virtualization, a hypervisor virtualizes physical hardware. The result is that each virtual machine contains a guest OS, a virtual copy of the hardware that the OS requires to run and an application and its associated libraries and dependencies. VMs with different operating systems can be run on the same physical server. For example, a VMware VM can run next to a Linux VM, which runs next to a Microsoft VM, etc.

Instead of virtualizing the underlying hardware, containers virtualize the operating system (typically Linux or Windows) so each individual container contains only the application and its libraries and dependencies. Containers are small, fast, and portable because, unlike a virtual machine, containers do not need to include a guest OS in every instance and can, instead, simply leverage the features and resources of the host OS. 

Just like virtual machines, containers allow developers to improve CPU and memory utilization of physical machines. Containers go even further, however, because they also enable microservice architectures, where application components can be deployed and scaled more granularly. This is an attractive alternative to having to scale up an entire monolithic application because a single component is struggling with load.

https://www.ibm.com/cloud/blog/containers-vs-vms


![vm_vs_docker](https://user-images.githubusercontent.com/105854053/177197095-de7e04af-7597-4ce6-8809-042e504d58b6.png)

## Docker commands

`docker images` - shows a list of images

`docker run -d -p 80:80 eng114sharmake/sharmarkenginx` 

`docker ps -a` 

`docker start `

`docker stop `

`docker rm containerID -f`

To get inside container run this command
`docker exec -it containerID bash` 

if this does not work run this command then repeat
`alias docker="winpty docker"`

Navigate `cd /usr/share/nginx/html`

`apt-get update -y`
`apt-get install nano`


## How to push to docker?

`docker ps`

`docker commit id username/reponame`

`docker push usrname/reponame`
