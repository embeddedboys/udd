## embeddedboys USB Display Device driver

This will be the main branch for UDD driver maintenance until the release of Ubuntu 26.04 LTS.

## System Info

| Distro | Kernel version |
| --- | --- |
| Ubuntu 24.04.2 LTS | 6.11.0-25-generic |

install tools
```bash
sudo apt install git make gcc vim -y
```

clone and build
```bash
git clone https://github.com/embeddedboys/udd.git
cd udd
git checkout ubuntu-24.04
make
sudo insmod udd.ko
```

The default display backend is DRM and input support is disabled.
