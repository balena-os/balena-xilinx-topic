FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append_ge-189408 = "file://uEnv-balena.txt"

do_install_append_ge-189408() {
	install -Dm 0644 ${WORKDIR}/uEnv-balena.txt ${D}/boot/uEnv.txt
}

do_deploy_append_ge-189408() {
	install -Dm 0644 ${WORKDIR}/uEnv-balena.txt ${DEPLOYDIR}/uEnv.txt
}