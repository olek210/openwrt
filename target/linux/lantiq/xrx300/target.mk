ARCH:=mips
SUBTARGET:=xrx300
BOARDNAME:=XRX300
FEATURES:=squashfs nand ramdisk
CPU_TYPE:=24kc

DEFAULT_PACKAGES+=kmod-leds-gpio \
	kmod-gpio-button-hotplug \
	kmod-ltq-deu-vr9 \
	swconfig

define Target/Description
	Lantiq XRX300
endef
