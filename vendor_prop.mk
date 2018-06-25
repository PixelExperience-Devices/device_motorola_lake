#
# vendor props for evert
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.calfile0=/vendor/etc/acdbdata/common/Bluetooth_cal.acdb \
    persist.audio.calfile1=/vendor/etc/acdbdata/common/General_cal.acdb \
    persist.audio.calfile2=/vendor/etc/acdbdata/common/Global_cal.acdb \
    persist.audio.calfile3=/vendor/etc/acdbdata/common/Handset_cal.acdb \
    persist.audio.calfile4=/vendor/etc/acdbdata/common/Hdmi_cal.acdb \
    persist.audio.calfile5=/vendor/etc/acdbdata/common/Headset_cal.acdb \
    persist.audio.calfile6=/vendor/etc/acdbdata/common/Speaker_cal.acdb

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=evert \
    ro.vendor.sensors.maghalcal=true \
    ro.vendor.sensors.amd=false \
    ro.vendor.sensors.pmd=false \
    ro.vendor.sensors.rmd=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.scrn_ortn=false \
    ro.vendor.sensors.pedometer=false \
    ro.vendor.sensors.dev_ori=true \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sdk.sensors.gestures=false
