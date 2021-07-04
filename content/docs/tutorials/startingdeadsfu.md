---
title: "Starting DeadSFU"
description: "How to run DeadSFU."
lead: "How to run DeadSFU."
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


{{< tabs name="runtab" >}} 
{{< tab name="Using Binaries" codelang="bash" >}}
# replace cameron42 with your name and a number, ie larry35 
./deadsfu -s https://cameron42.ddns5.com
{{< /tab >}}}
{{{< tab name="Using Docker" codelang="bash" >}}
# replace cameron42 with your name and a number, ie larry35 
docker run --network host x186k/deadsfu /app/main -s https://cameron42.ddns5.com
{{< /tab >}}
{{< /tabs >}}

*You can use whatever hostname you want instead of cameron42*

## Open Browser to Send/Receive Page

## Start Transmitting

## Start Receiving





