[![Build Status](https://travis-ci.org/weyderfs/black_pearl.svg?branch=master)](https://travis-ci.org/weyderfs/black_pearl)

FROM ZERO TO K8S Cluster
================

This project was created to purpose of study and learning. If you want learn about Kubernetes and looking for a _faster_ cluster installation you can use this role.

PREREQUISITES :construction:
====

* Hypervisor or Virtualizer: 
  * [Vagrant](https://www.vagrantup.com/) 
  * [Virtual Box](https://www.virtualbox.org/) 

* [Ansible](https://www.ansible.com/) :cyclone:
* [Python](https://python.org) :snake:
* [ISO: Ubuntu 20.04 LTS](https://ubuntu.com/download/server/thank-you?version=20.04&architecture=amd64) :penguin:
* [DockerCE](https://docs.docker.com/install/linux/docker-ce/ubuntu/) :whale:

VIRTUAL HARDWARE REQUIREMENTS :gear:
====

**3x Virtual Machines**

* Minimum requirements:
    * 2 vCPUS
    * 2 Gb vRAM
    * 40 Gb VDI
    * Bridge Interface network

**Case you clone the virtual machines be careful, remember the reset MAC address of NICs.**

More info in Kubernetes docs [here](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/).


Preheating :hotsprings:
=

Before start you will need **3x VMs** and Running **Ubuntu 20.04 LTS**.

**Note**: All resources will be installed by **Ansible** and when finish you just need connect via _SSH_ on virtual machine that you choose to K8s Master and run: `$ kubeadm init` to start your setup. :ship:

Starting K8s Cluster :up:
===

* To start the cluster run this commands bellow:
  * `kubeadm init --apiserver-advertise-address $(hostname -i) --pod-network-cidr=10.244.0.0/16`.
  * Your cluster will be need a CNI ( Container Network Interface) like a Calico or Flannel
  
More info:
* [Kubeadm](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)
* [Flannel](https://github.com/coreos/flannel)
* [Calico](https://www.projectcalico.org/)




UNDERSTANDING WHAT WILL HAPPEN :rocket:
=====

Ansible Roles :closed_book:
====

* Upgrade and install system utilities
  * bash-completion
  * locate
  * vim
  * htop
  * ssh
  * curl
  * wget
  * netcat
  * telnet
  * gpg
  * mtr
  * apt-transport-https 
  * ca-certificates
  * curl 
  * gnupg-agent 
  * software-properties-common
  
  
* Install Docker and make sure that running
  * Ensure the use of **Cgroups**
  * Enable Docker service on boot system via **Systemd**


* Install K8s tools and pull images:
  * kube-apiserver
  * kube-controller-manager
  * kube-scheduler
  * kube-proxy
  * pause
  * etcd
  * coredns

**OPTIONAL ROLE**: *install_helm* - Create to download **HELM v2.14.2** + **Tiller** and configure them. For use you need uncomment last role declated in _main.yml_ on **Ansible** folder.
    






LICENSE :passport_control:
-------

Apache 2.0

Author Information
------------------

Made by: Weyder Ferreira

Contact:
[http://linkedin.com/in/weyderfs](LinkedIn)
