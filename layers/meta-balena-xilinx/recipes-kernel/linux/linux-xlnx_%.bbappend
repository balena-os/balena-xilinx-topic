inherit kernel-resin

RESIN_CONFIGS_append = " \
    usb_serial \
"

RESIN_CONFIGS[usb_serial] = " \
    CONFIG_USB_SERIAL=m \
"

RESIN_CONFIGS[fatfs] = " \
   CONFIG_MSDOS_FS=y \
   CONFIG_VFAT_FS=y \
   CONFIG_NLS_ASCII=y \
   CONFIG_NLS_CODEPAGE_437=y \
"
