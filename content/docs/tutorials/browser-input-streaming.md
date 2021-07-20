---
title: "Browser-input Streaming"
# description: "Browser-input Streaming"
# lead: "Browser-input Streaming"
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


### Install

You need to download and untar the binary from the install page, before starting this walkthough.

### Start the SFU:

You should have a file: `deadsfu` or `deadsfu.exe`, or Docker image ready.

{{< tabs name="runtab" >}} 
{{< tab name="Linux or macOS" codelang="bash" >}}
./deadsfu https://cameron42.ddns5.com:8443
{{< /tab >}}}
{{< tab name="Windows" codelang="bash" >}}
./deadsfu.exe https://cameron42.ddns5.com:8443
{{< /tab >}}}
{{{< tab name="Using Docker" codelang="bash" >}}
docker run --network host x186k/deadsfu /app/main https://cameron42.ddns5.com:8443
{{< /tab >}}
{{< /tabs >}}

The SFU will print some informational mesages.

Wait 5-20 seconds for this message: `HTTPS READY: Certificate Acquired`

Open your browser to the console: `https://cameron42.ddns5.com:8443`


### Your SFU is now ready to use.

{{< alert icon="💡" text="Instead of cameron42, you can choose another hostname. When you re-use a hostname, please re-use hostnames from the same IP address." />}}



## Open Browser to Send/Receive Page

With the SFU running, copy the following URL and open it in your browser
```
https://cameron42.ddns5.com
```

## Start Transmitting

Open one browser tab to the URL you copied.

You should have a camera connected to your system for transmission.

Hit the `Send` button.

You should see video of yourself as captured from your camera.

This video is being sent to the SFU and ready for distribution.

<figure>
<img src="/binaries/send-button.png" border="5" style="height:100%;width:100%;object-fit:contain">
</figure>


## Start Receiving

Open one, two, or three browser tabs to the URL you copied.

In each, hit the `Receive` button.

In a second or two, you should see video being relayed from the SFU.

<figure>
<img src="/binaries/receive-button.png" border="5" style="height:100%;width:100%;object-fit:contain">
</figure>

## Try Simulcast

By default when you send, you are sending using Simulcast, this means the sending-tab
is encoding and sending three different levels of video.

You change which of the three simulcast channels you are viewing by using the `Channel` drop down.

<figure>
<img src="/binaries/select-channel.png" border="5" style="height:100%;width:100%;object-fit:contain">
</figure>

## Next Steps

The next step is really seeing how you can scale your video broadcast beyond a single SFU.

Coming soon!









<script>
function replace(element, from, to) {
    if (element.childNodes.length) {
        element.childNodes.forEach(child => replace(child, from, to))
    } else {
        const cont = element.textContent
        if (cont) element.textContent = cont.replace(from, to)
    }
}

var words = ['liam','olivia','noah','emma','oliver','ava','cameron','elliott']
var word = words[Math.floor(Math.random() * words.length)]
var namenum = word + Math.floor(Math.random() * 1e4)

let elems = document.querySelectorAll('code')
for (i = 0; i < elems.length; i++) {
  replace(elems[i],"cameron42",namenum)
}
</script> 
