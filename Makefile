
# local kernel build dir
# KERN_DIR:=/lib/modules/$(shell uname -r)/build

# users kernel dir
# KERN_DIR:=/home/user/linux

ARCH := arm
CROSS_COMPILE := ${HOME}/luckfox/lyra/prebuilts/gcc/linux-x86/arm/gcc-arm-10.3-2021.07-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf-
KERN_DIR := ${HOME}/luckfox/lyra/kernel


MODULE_NAME:=udd

all:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KERN_DIR) M=`pwd` modules
clean:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KERN_DIR) M=`pwd` modules clean

clena: clean

test: all
	sudo rmmod $(MODULE_NAME).ko || true
	sudo insmod $(MODULE_NAME).ko || true

CFLAGS_encoder.o += -Werror=frame-larger-than=4096
obj-m += $(MODULE_NAME).o
$(MODULE_NAME)-y += usb.o jpegenc.o encoder.o fb.o drm.o
