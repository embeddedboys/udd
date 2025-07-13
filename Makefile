
# local kernel build dir
# KERN_DIR:=/lib/modules/$(shell uname -r)/build

# users kernel dir
ARCH := arm
CROSS_COMPILE := ${HOME}/luckfox/pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-
KERN_DIR := ${HOME}/luckfox/pico/sysdrv/source/objs_kernel

PLATFORM=local

MODULE_NAME:=udd

all:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KERN_DIR) M=`pwd` modules
clean:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KERN_DIR) M=`pwd` modules clean

clena: clean

test: all
	sudo rmmod $(MODULE_NAME).ko || true
	sudo insmod $(MODULE_NAME).ko || true

CFLAGS_encoder.o := -Werror=frame-larger-than=4096
obj-m += $(MODULE_NAME).o
$(MODULE_NAME)-y += usb.o jpegenc.o encoder.o fb.o drm.o
