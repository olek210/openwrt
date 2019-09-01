define Device/dlink_dwr-966
  $(Device/NAND)
  DEVICE_VENDOR := D-Link
  DEVICE_MODEL := DWR-966
  BOARD_NAME := DWR-966
  DEVICE_PACKAGES := kmod-usb-dwc2
  SUPPORTED_DEVICES += DWR-966
endef
TARGET_DEVICES += dlink_dwr-966
