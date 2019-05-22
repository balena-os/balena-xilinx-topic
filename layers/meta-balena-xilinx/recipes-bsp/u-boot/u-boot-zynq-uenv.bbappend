FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append_zcu102-zynqmp = "file://uEnv-balena.txt"

do_install_append() {
	install -Dm 0644 ${WORKDIR}/uEnv-balena.txt ${D}/boot/uEnv.txt
}

do_deploy_append() {
	install -Dm 0644 ${WORKDIR}/uEnv-balena.txt ${DEPLOYDIR}/uEnv.txt
}