#
# Copyright (C) 2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=xrx300-gphy-firmware
PKG_RELEASE:=1
PKG_FLAGS:=nonshared

include $(INCLUDE_DIR)/package.mk

define Package/xrx300-gphy-firmware-defaults
  SECTION:=firmware
  CATEGORY:=Firmware
  DEPENDS:=@TARGET_lantiq_xrx200
  DEFAULT:=n
  TITLE:=$(1)
endef

define Package/xrx300-gphy-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/lantiq
	$(INSTALL_DATA) files/$(2) $(1)/lib/firmware/lantiq/$(3)
endef

define Package/xrx300-phy11g-firmware
  $(call Package/xrx300-gphy-firmware-defaults, xRx300 Gigabit Ethernet PHY Firmware)
endef

define Package/xrx300-phy11g-firmware/description
  This package contains firmware for Gigabit Ethernet PHY integrated in xRx300 SoC.
endef

define Package/xrx300-phy11g-firmware/install
  $(call Package/xrx300-gphy-firmware/install,$(1),ltq_fw_PHY11G_IP_1v5_xRx3xx_A21_R8434.bin,xrx300_phy11g_a21.bin)
endef

define Package/xrx300-phy22f-firmware
  $(call Package/xrx300-gphy-firmware-defaults, xRx300 Fast Ethernet PHY Firmware)
endef

define Package/xrx300-phy22f-firmware/description
  This package contains firmware for Fast Ethernet PHY integrated in xRx300 SoC.
endef

define Package/xrx300-phy22f-firmware/install
  $(call Package/xrx300-gphy-firmware/install,$(1),ltq_fw_PHY22F_IP_1v5_xRx3xx_A21_RC434.bin,xrx300_phy22f_a21.bin)
endef

define Build/Compile

endef

$(eval $(call BuildPackage,xrx300-phy11g-firmware))
$(eval $(call BuildPackage,xrx300-phy22f-firmware))
