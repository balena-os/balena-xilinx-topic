# Patch FSBL
#
# In order to get the FSBL to regenerate the ./components/plnx_workspace/fsbl*, you have to:
# 1)	petalinux-build -c fsbl -x distclean
# 2)	rm -rf ./components/plnx_workspace/.metadata ./components/plnx_workspace/fsbl*
# 3)	petalinux-build -c fsbl

do_configure_prepend() {
    if [ -d "${S}/patches" ]; then
        rm -rf ${S}/patches
    fi
    if [ -d "${S}/.pc" ]; then
        rm -rf ${S}/.pc
    fi
}

SRC_URI_append = " \
        file://0002-QSPI-speedup.patch \
        "

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# XSCT_BUILD_DEBUG = "1"

# project build somehow detects ZCU102 board and applies define.
#YAML_COMPILER_FLAGS_append = " -DXPS_BOARD_ZCU102"

EXTERNALXSCTSRC = ""
EXTERNALXSCTSRC_BUILD = ""

