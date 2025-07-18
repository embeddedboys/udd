## System Info

| Distro | Kernel version |
| --- | --- |
| Luckfox lyra | 6.1.99 (Curry Ramen) |

install tools
```bash
sudo apt install git make gcc gcc-12 vim -y
```

clone and build
```bash
git clone https://github.com/embeddedboys/udd.git
cd udd
git checkout ubuntu-22.04
make
sudo insmod udd.ko
```

The default display backend is DRM.
