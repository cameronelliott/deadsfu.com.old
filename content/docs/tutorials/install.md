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
- [Docker](#docker)
- [macOS](#macos)
- [Windows](#windows)
- [Compile from Source](#compile-from-source)


## Linux
{{< alert icon="💡" text="<code>amd64</code> binaries are what most people need for Linux. Much less common is Linux servers running on <code>arm64</code> processors." />}}

{{< tabs name="linuxtab" >}}
{{{< tab name="Intel, AMD" codelang="bash" >}}
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-linux-amd64.tar.gz | tar xvz
{{< /tab >}}
{{< tab name="ARM" codelang="bash" >}}
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-linux-arm64.tar.gz | tar xvz
{{< /tab >}}}
{{< /tabs >}}

Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).


## Docker
Docker is a great way to use <code>DeadSFU</code>. If you are new to Docker, you might find it easier to learn <code>DeadSFU</code> with plain-old binaries. But, we offer both ways to use <code>DeadSFU</code>, so it's up to you.

{{< alert icon="💡" text="There is nothing to install to use <code>DeadSFU</code> with Docker. But you must have a system with Docker already installed." />}}

{{< alert icon="💡" text="Docker is tightly coupled with the Linux kernel. For performance reasons we recommend only using <code>DeadSFU</code> with Docker on Linux systems." />}}

Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## macOS

{{< tabs name="macostab" >}}
{{{< tab name="Intel CPUs" codelang="bash" >}}
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-darwin-amd64.tar.gz | tar xvz
{{< /tab >}}
{{< tab name="Apple CPUs" codelang="bash" >}}
curl -sL https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-darwin-arm64.tar.gz | tar xvz
{{< /tab >}}}
{{< /tabs >}}

Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

## Windows
{{< alert icon="💡" text="These directions work on Windows 10 build# >=17063 or Windows Server 2019" />}} 

{{< tabs name="windowstab" >}}
{{{< tab name="Intel & AMD CPUs" codelang="bash" >}}
curl  https://github.com/x186k/deadsfu/releases/latest/download/deadsfu-windows-amd64.zip -sLo tmp && tar -xvf tmp && del tmp
{{< /tab >}}
{{< tab name="ARM" codelang="bash" >}}
# contact us if you need Windows/ARM binaries, or submit a PR after Go 1.17 release
{{< /tab >}}}
{{< /tabs >}}

Jump to [Starting DeadSFU]({{< relref "startingdeadsfu" >}}).

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