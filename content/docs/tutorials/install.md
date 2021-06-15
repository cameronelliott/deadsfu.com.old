---
title: "Install"
description: "How to install sfu1."
lead: "How to install sfu1."
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
  - [Install binaries for Linux ARM64](#install-binaries-for-linux-arm64)
  - [Install binaries for Linux AMD64](#install-binaries-for-linux-amd64)
- [Docker on Linux with amd64 CPUs](#docker-on-linux-with-amd64-cpus)
- [macOS](#macos)
  - [macOS Intel CPU](#macos-intel-cpu)
- [macOS Apple CPU](#macos-apple-cpu)
- [Windows](#windows)
- [Docker on Linux on non-amd64, ie Raspberry Pi](#docker-on-linux-on-non-amd64-ie-raspberry-pi)
- [Docker on non-Linux Platforms](#docker-on-non-linux-platforms)
- [Compile from Source](#compile-from-source)


## Linux
### Install binaries for Linux ARM64
### Install binaries for Linux AMD64

{{< alert icon="💡" text="Linux binaries are provided for `amd64` and `arm64` compatible CPUs." />}}

Download the latest binary tar ball:

{{< btn-copy text="curl -OL https://github.com/x186k/sfu1/releases/latest/download/sfu1-linux-amd64.tar.gz | tar xvz" >}}

```bash

curl -OL https://github.com/x186k/sfu1/releases/latest/download/sfu1-linux-amd64.tar.gz | tar xvz
```

Untar the tar ball:

{{< btn-copy text="tar xzf sfu1-linux-amd64.tar.gz" >}}

```bash
tar xzf sfu1-linux-amd64.tar.gz
```

## Docker on Linux with amd64 CPUs

```bash
docker run --network host x186k/sfu1 /app/main -https-port 443 -domain foo2.ddns5.com
```


## macOS
### macOS Intel CPU

Download the latest binary tar ball:

{{< btn-copy text="curl -OL https://github.com/x186k/sfu1/releases/latest/download/sfu1-darwin-amd64.tar.gz" >}}

```bash

curl -OL https://github.com/x186k/sfu1/releases/latest/download/sfu1-darwin-amd64.tar.gz
```

Untar the tar ball:

{{< btn-copy text="tar xzf sfu1-darwin-amd64.tar.gz" >}}

```bash
tar xzf sfu1-darwin-amd64.tar.gz
```

## macOS Apple CPU
## Windows
## Docker on Linux on non-amd64, ie Raspberry Pi 
## Docker on non-Linux Platforms

## Compile from Source

There are two repos you need to compile from source: `sfu1` and `sfu1-binaries`.
`sfu1-binaries` must be nested inside `sfu1` when compiling.

You don't need archane git tools like `git lfs` or `git submodules`.

You need a version of Go greater than 1.16, we recommend 1.16.5 or later.

Clone the main repo:

{{< btn-copy text="git clone https://github.com/x186k/sfu1.git" >}}

```bash
git clone https://github.com/x186k/sfu1.git
```

Change dir:

{{< btn-copy text="cd sfu1" >}}

```bash
cd sfu1
```

Clone the binaries repo:

{{< btn-copy text="git clone https://github.com/x186k/sfu1-binaries.git" >}}

```bash
git clone https://github.com/x186k/sfu1-binaries.git
```

Build with Go:

{{< btn-copy text="go build ." >}}

```bash
go build .
```



