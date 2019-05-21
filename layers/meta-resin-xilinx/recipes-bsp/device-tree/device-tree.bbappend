FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://system-user.dtsi \
    file://m100.dtsi \
    "

do_configure_prepend() {
    cp ${WORKDIR}/m100.dtsi ${S}/device_tree/data/kernel_dtsi/${XILINX_VER_MAIN}/BOARD
}

