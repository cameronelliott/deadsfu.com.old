---
title: "Install"
description: "How to install DeadSFU."
lead: "How to install DeadSFU."
date: 2020-10-13T15:21:01+02:00
lastmod: 2020-10-13T15:21:01+02:00
draft: false
images: []
menu:
  docs:
    parent: "tutorials"
weight: 130
toc: true
---


- [Linux](#linux)
  - [Install Linux binaries for Intel, AMD](#install-linux-binaries-for-intel-amd)
  - [Install Linux binaries for ARM](#install-linux-binaries-for-arm)
- [Docker](#docker)
  - [Docker on Linux](#docker-on-linux)
  - [Docker on macOS, Windows](#docker-on-macos-windows)
- [macOS](#macos)
  - [Install macOS binaries for Intel CPUs](#install-macos-binaries-for-intel-cpus)
  - [Install macOS binaries for Apple CPUs](#install-macos-binaries-for-apple-cpus)
- [Windows](#windows)
  - [Install Windows binaries for Intel, AMD CPUs](#install-windows-binaries-for-intel-amd-cpus)
- [Compile from Source](#compile-from-source)


## Linux
{{< alert icon="💡" text="<code>amd64</code> binaries are what most people need for Linux. Much less common is Linux servers running on <code>arm64</code> processors." />}}
### Install Linux binaries for Intel, AMD   
Download and untar the tar ball:

```bash

curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-linux-amd64.tar.gz | tar xvz
```
Jump to [Quick Start]({{< relref "quickstart" >}}).
### Install Linux binaries for ARM 
Download and untar the tar ball:
```bash

curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-linux-arm64.tar.gz | tar xvz
```
## Docker
Docker is a great way to run <code>DeadSFU</code>. But we recommend if you are new to Docker that you get started with plain-old binaries, rather than Docker. If you are experienced in Docker, we recommend using Docker, as containers are a great way to scale <code>DeadSFU</code>.  
### Docker on Linux
```bash
docker run --network host x186k/deadsfu /app/main -https-port 443 -domain foo2.ddns5.com
```
### Docker on macOS, Windows
Docker is tightly coupled with the Linux kernel. So, when you run Docker on other operating systems, like Windows or macOS you are probably running a Linux kernel under a virtual machine. *WE DON'T RECOMMEND USING DeadSFU UNDER DOCKER ON NON-LINUX SYSTEMS.* It might work for you, but don't be surprised if you have performance issues.
## macOS
{{< alert icon="💡" text="On macOS <code>amd64</code> binaries are for Intel CPUs. <code>arm64</code> is needed for Apple's newer ARM processors." />}} 
### Install macOS binaries for Intel CPUs 
Download and untar the tar ball:
```bash

curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-darwin-amd64.tar.gz | tar xvz
```
### Install macOS binaries for Apple CPUs 
Download and untar the tar ball:
```bash

curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-darwin-arm64.tar.gz | tar xvz
``` 
## Windows
### Install Windows binaries for Intel, AMD CPUs 
{{< alert icon="💡" text="These directions work on Windows 10 build# >=17063 or Windows Server 2019" />}} 
Download zip file:
```bash

curl  https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-windows-amd64.zip -sLo tmp && tar -xvf tmp && del tmp
``` 

## Compile from Source
There are two repos you need to compile from source: `deadsfu` and `deadsfu-binaries`.
`deadsfu-binaries` must be nested inside `deadsfu` when compiling.

You don't need archane git tools like `git lfs` or `git submodules`.

You need a version of Go greater than 1.16, we recommend 1.16.5 or later.

Clone the main repo:
```bash
git clone https://github.com/x186k/deadsfu.git
```
Change dir:
```bash
cd deadsfu
```

Clone the binaries repo:
```bash
git clone https://github.com/x186k/deadsfu-binaries.git
```

Build with Go:
```bash
go build .
```




