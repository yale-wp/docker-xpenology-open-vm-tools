# docker-xpenology-open-vm-tools

This Docker container allows you to run open-vm-tools on a Xpenology DSM running on VMware ESXi.

* Supports Shutdown/Restart
* Returns DSM networking information to the VMware ESXi host

## Dependencies

* SSH must be enabled on your DSM.
  * The shutdown and restart commands are sent over ssh.
  * This container will generate a unique ssh key pair when it is first launched.
* Docker installed via DSM Package Manager.

## Usage

SSH into your DSM and run this command.

```
sudo mkdir /root/.ssh
sudo docker run -d --restart=always --net=host -v /root/.ssh/:/root/.ssh/ --name open-vm-tools yalewp/xpenology-open-vm-tools
```
