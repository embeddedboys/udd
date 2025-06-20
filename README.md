## embeddedboys USB Display Device driver

This will be the main branch for UDD driver maintenance until the release of Ubuntu 26.04 LTS.

## System Info

| Distro | Kernel version |
| --- | --- |
| Ubuntu 24.04.2 LTS (Noble Numbat) | 6.11.0-26-generic |

Note: The default display backend is **DRM** and input support is **disabled**.

### Get Started

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
```

**Here are two ways to use the UDD device.**

### 1. Set up this device as an external display.

```
sudo insmod udd.ko
```

### 2. Use this device as main display

If you have nvidia driver or nouveau driver installed, please remove and disable it, follow these steps:

#### 2.1. remove nvidia drivers

```bash
sudo apt purge "*nvidia*"
```

#### 2.2. disable nouveau driver
```bash
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"

sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
```

#### 2.3. disable simpledrm driver

When this function is enabled, a default display is created after system boot.
```bash
echo 'GRUB_CMDLINE_LINUX_DEFAULT="$GRUB_CMDLINE_LINUX_DEFAULT initcall_blacklist=simpledrm_platform_driver_init"' | sudo tee /etc/default/grub.d/99_disable_simpledrm.cfg

sudo update-grub
```

#### 2.4. reboot and install the udd driver
```bash
sudo reboot

cd udd
sudo insmod udd.ko
```

#### 2.5. connnect the udd device to your computer and restart the gdm service

```bash
sudo service gdm3 restart
```

If everything is working properly, the login screen will eventually appear on the device, although it may take a while.

happy hacking.