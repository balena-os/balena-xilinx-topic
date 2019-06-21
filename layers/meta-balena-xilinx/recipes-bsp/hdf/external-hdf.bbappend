FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

ge-189408_HDF = "bld_746_ecc_v2018_3_iic_mod2.hdf"

SRC_URI_append_ge-189408 = " \
	file://${ge-189408_HDF} \
"

do_deploy_prepend_ge-189408() {
	cp -r ${WORKDIR}/git/zcu102-zynqmp ${WORKDIR}/git/${MACHINE}
}

do_deploy_append_ge-189408() {
	install -m 0644 ${WORKDIR}/${ge-189408_HDF} ${DEPLOYDIR}/Xilinx-${MACHINE}.${HDF_EXT}
}
