FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

M100_HDF = "bld_746_ecc_v2018_3_iic_mod2.hdf"

SRC_URI += " \
	file://${M100_HDF} \
"

do_deploy_append() {
	install -m 0644 ${WORKDIR}/${M100_HDF} ${DEPLOYDIR}/Xilinx-${MACHINE}.${HDF_EXT}
}
