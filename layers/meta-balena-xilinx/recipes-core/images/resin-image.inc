IMAGE_FSTYPES_append_zcu102-zynqmp = " resinos-img"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER_zcu102-zynqmp = "u-boot-xlnx"
RESIN_BOOT_PARTITION_FILES_zcu102-zynqmp = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    ${KERNEL_IMAGETYPE}-zynqmp-zcu102-rev1.0.dtb:/ \
    BOOT-zcu102-zynqmp.bin:/boot.bin \
    m100.dtb:/ \
    uEnv.txt:/ \
"