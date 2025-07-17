
## System info

| Distro | Kernel version |
| --- | --- |
| Luckfox Pico | 5.10.160 (Dare mighty things) |

### Get started

搭建luckfox pico开发环境，参考文档

至少构建一次驱动
```bash
./build.sh driver
```

Install tools
```bash
sudo apt install git make gcc vim -y
```

Clone and build
```bash
git clone https://github.com/embeddedboys/udd.git
cd udd
git checkout luckfox-pico
make
```

This default display backend is DRM.

