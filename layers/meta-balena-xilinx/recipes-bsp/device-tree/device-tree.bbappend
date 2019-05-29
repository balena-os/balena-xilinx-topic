FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://system-user.dtsi \
    file://m100.dtsi \
    file://m100.dtb \
    "

do_configure_prepend() {
    cp ${WORKDIR}/m100.dtsi ${S}/device_tree/data/kernel_dtsi/${XILINX_VER_MAIN}/BOARD
}

do_deploy_append() {
    install -m 0644 ${WORKDIR}/m100.dtb ${DEPLOYDIR}
}