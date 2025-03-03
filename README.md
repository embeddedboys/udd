
## System info

| Distro | Kernel version |
| --- | --- |
| Ubuntu 20.04.6 LTS Live Session | 5.15.0-67-generic |
| Ubuntu 20.04.6 LTS | 5.15.131-generic |

Install tools
```bash
sudo apt install git make gcc vim -y
```

Clone and build
```bash
git clone https://github.com/embeddedboys/udd.git
cd udd
make
```

This default display backend is DRM.

