## System Info

| Distro | Kernel version |
| --- | --- |
| Ubuntu 22.04.5 LTS Live Session | 6.8.0-40-generic |
| Ubuntu 22.04.5 LTS | _ |

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
