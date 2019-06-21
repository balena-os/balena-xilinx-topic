FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_ge-189408 = " \
    file://system-user.dtsi \
    file://ge-189408.dtsi \
    file://ge-189408.dtb \
"

do_configure_prepend_ge-189408() {
    cp ${WORKDIR}/ge-189408.dtsi ${S}/device_tree/data/kernel_dtsi/${XILINX_VER_MAIN}/BOARD
}

do_deploy_append_ge-189408() {
    install -m 0644 ${WORKDIR}/ge-189408.dtb ${DEPLOYDIR}
}
