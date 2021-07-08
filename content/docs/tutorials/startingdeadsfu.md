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


### Start the SFU:
{{< tabs name="runtab" >}} 
{{< tab name="Using Binaries" codelang="bash" >}}
./deadsfu -s https://cameron42.ddns5.com
{{< /tab >}}}
{{{< tab name="Using Docker" codelang="bash" >}}
docker run --network host x186k/deadsfu /app/main -s https://cameron42.ddns5.com
{{< /tab >}}
{{< /tabs >}}

### Wait for the HTTPS-certificate to be aquired:
  
Wait for this message to be output:

`deadsfu HTTPS READY: HTTPS Certificate Acquired`

The first time aquiring the cert it can take a little while.  
Usually it takes under 10 seconds, although it can take up to 30 seconds.  
Please re-use hostnames when possible, this will save you time from waiting, and reduce our load.

### Your SFU is now ready to use.

{{< alert icon="💡" text="You can use whatever hostname you want in front of .ddns5.com, but it will save you trouble if you choose a word unlikley to be used by other people. It will also save you time, if you keep re-using the same set of hostnames. We suggest a set of less than ten (hostnames) to be gracious." />}}



## Open Browser to Send/Receive Page

With the SFU running, copy the following URL and open it in your browser
```
https://cameron42.ddns5.com
```

## Start Transmitting

<a class="btn btn-primary btn-lg px-4 mb-2" href="https://join.slack.com/t/deadsfu/shared_invite/zt-sv23oa10-XFFYoJHPty8BtuCmBthH_A" role="button">Join Slack</a>


## Start Receiving




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
