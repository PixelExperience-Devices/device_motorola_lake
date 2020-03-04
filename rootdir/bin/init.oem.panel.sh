#!/vendor/bin/sh

PATH=/sbin:/vendor/sbin:/vendor/bin:/vendor/xbin
export PATH

# Globals
scriptname=${0##*/}
dlkm_path=/vendor/lib/modules
panel_path=/sys/devices/virtual/graphics/fb0
panel_ver=

notice()
{
	echo "$*"
	echo "$scriptname: $*" > /dev/kmsg
}

read_panel_property()
{
	property=""
	notice "retrieving panel property: [$panel_path/$1]"
	property=$(cat $panel_path/$1 2> /dev/null)
	notice "panel property [$1] is: [$property]"
	[ -z "$property" ] && return 1
	return 0
}

query_panel_info()
{
	supplier=""
	read_touch_property "panel_supplier"
	[ -z "$property" ] && read_panel_property "panel_supplier"
	supplier=$property
	if [ "$supplier" ]; then
		read_panel_property "controller_drv_ver"
		panel_ver=${property#${property%?}}
		notice "panel supplier: $supplier, ver $panel_ver"
	else
		notice "driver does not report panel supplier"
	fi
}

# Main
query_panel_info
notice "panel supplier is [$supplier]"
case $supplier in
	boe | tianmah)
		insmod $dlkm_path/himax_mmi.ko
		;;
	tianman)
		insmod $dlkm_path/nova_mmi.ko
		;;
	tianma)
		insmod $dlkm_path/synaptics_tcm_i2c.ko
		insmod $dlkm_path/synaptics_tcm_core.ko
		insmod $dlkm_path/synaptics_tcm_touch.ko
		insmod $dlkm_path/synaptics_tcm_device.ko
		insmod $dlkm_path/synaptics_tcm_reflash.ko
		insmod $dlkm_path/synaptics_tcm_testing.ko
		;;
	*)
		notice "$supplier not supported"
		return 1
		;;
esac

return 0
