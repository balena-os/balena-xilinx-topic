FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS_append_ge-189408 = " \
    99-resin-uboot \
    99-flash-bootbins \
"
