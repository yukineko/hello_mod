obj-m := hello.o

CCPREFIX=../tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin/arm-bcm2708-linux-gnueabi-
SOURCE=../linux
ARCH=arm


all:
	make -C $(SOURCE) ARCH=$(ARCH) CROSS_COMPILE=$(CCPREFIX) SUBDIRS=$(shell pwd) modules

clean:
	make -C $(SOURCE) M=$(shell pwd) clean


