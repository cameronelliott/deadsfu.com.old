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
weight: 1
toc: true
---
- [Linux on Intel, AMD64](#linux-on-intel-amd64)
- [Linux on ARM64](#linux-on-arm64)
- [macOS Intel CPU](#macos-intel-cpu)
- [macOS Apple CPU](#macos-apple-cpu)
- [Docker](#docker)
- [Windows Intel, AMD64](#windows-intel-amd64)
- [Windows ARM](#windows-arm)
- [Compile from Source](#compile-from-source)

## Linux on Intel, AMD64
Download, untar
```bash
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-linux-amd64.tar.gz | tar xvz
```
Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).
## Linux on ARM64
Download, untar
```bash
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-linux-arm64.tar.gz | tar xvz
```
Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## macOS Intel CPU
Download, untar
```bash
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-darwin-amd64.tar.gz | tar xvz
```
Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## macOS Apple CPU
Download, untar
```bash
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-darwin-arm64.tar.gz | tar xvz
```
Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## Docker
{{< alert icon="💡" text="Docker is tightly coupled with the Linux kernel. For performance reasons we recommend only using <code>DeadSFU</code> with Docker on Linux systems." />}}
Pull the image
```bash
docker pull x186k/deadsfu
```
Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## Windows Intel, AMD64
{{< alert icon="💡" text="These directions work on Windows 10 build# >=17063 or Windows Server 2019" />}} 
Download, untar
```bash
curl  https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-windows-amd64.zip -sLo tmp && tar -xvf tmp && del tmp
```
Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## Windows ARM
*contact us if you need Windows/ARM binaries, or submit a PR after Go 1.17 release*

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

Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).
