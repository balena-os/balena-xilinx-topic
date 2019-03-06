inherit kernel-resin

RESIN_CONFIGS_append = " \
    usb_serial \
"

RESIN_CONFIGS[usb_serial] = " \
    CONFIG_USB_SERIAL=m \
"
