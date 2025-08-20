## System Info

| Distro | Kernel version |
| --- | --- |
| WSL | 6.6.87.2-microsoft-standard-WSL2+ |

install tools
```bash
sudo apt install git make gcc gcc-12 vim -y
```

clone and build
```bash
git clone https://github.com/embeddedboys/udd.git
cd udd
git checkout kernel-6.6
make
sudo insmod udd.ko
```

The default display backend is DRM.

## More

### Useful commands during development

disable and enable cursor blink
```bash
sudo sh -c "echo 0 > /sys/class/graphics/fbcon/cursor_blink"
sudo sh -c "echo 1 > /sys/class/graphics/fbcon/cursor_blink"
```

vtconsole ubind and bind (This is useful when you removing activing fb driver)
```bash
sudo sh -c "echo 0 > /sys/class/vtconsole/vtcon1/bind"
sudo sh -c "echo 1 > /sys/class/vtconsole/vtcon1/bind"
```

mplayer output to fbdev
```bash
mplayer -vo fbdev2 -vf scale=480:320 xxx.mp4
```
