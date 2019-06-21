UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_ge-189408 += "file://platform-top.h \
	file://0001-Integrate-u-boot-with-Balena-env.patch \
"
