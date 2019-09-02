#!/vendor/bin/sh

PATH=/sbin:/vendor/sbin:/vendor/bin:/vendor/xbin
export PATH

panel_supplier=""
panel_supplier=$(cat /sys/devices/virtual/graphics/fb0/panel_supplier 2> /dev/null)
echo "panel supplier vendor is: [$panel_supplier]"

case $panel_supplier in
	boe | tianmah)
		insmod /vendor/lib/modules/himax_mmi.ko
		;;
	tianman)
		insmod /vendor/lib/modules/nova_mmi.ko
		;;
	tianma)
		insmod /vendor/lib/modules/synaptics_tcm_i2c.ko
		insmod /vendor/lib/modules/synaptics_tcm_core.ko
		insmod /vendor/lib/modules/synaptics_tcm_touch.ko
		insmod /vendor/lib/modules/synaptics_tcm_device.ko
		insmod /vendor/lib/modules/synaptics_tcm_reflash.ko
		insmod /vendor/lib/modules/synaptics_tcm_testing.ko
		;;
	*)
		echo "$panel_supplier not supported"
		return 1
		;;
esac

return 0
