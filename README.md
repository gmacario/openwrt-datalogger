openwrt-datalogger
==================

Introduction
------------

This project realizes a simple Wi-Fi datalogger.

This project has been tested on the [Kingston MWLG2](http://www.kingston.com/it/wireless/wireless_readers) running [OpenWrt](http://www.openwrt.org/) 15.05 (Chaos Chalmer).


Installing openwrt-datalogger
-----------------------------

The `install.sh` script does the job:

```
$ wget -qO- https://gmacario.github.io/openwrt-datalogger/install.sh | sh
```

If openssl is not installed on your system, as a workaround you may use the http transport:

```
$ wget -qO- http://gmacario.github.io/openwrt-datalogger/install.sh | sh
```

If you do not have wget (this is very unlikely since wget is avaialable as part of busybox) you may use curl instead:

```
$ curl http://gmacario.github.io/openwrt-datalogger/install.sh | sh
```

License
-------

See file `LICENSE`

Copyright 2015, [Gianpaolo Macario](https://gmacario.github.io/)

<!-- EOF -->
