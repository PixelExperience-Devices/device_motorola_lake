#
# vendor props for evert
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.calfile0=/vendor/etc/acdbdata/common/Bluetooth_cal.acdb \
    persist.vendor.audio.calfile1=/vendor/etc/acdbdata/common/General_cal.acdb \
    persist.vendor.audio.calfile2=/vendor/etc/acdbdata/common/Global_cal.acdb \
    persist.vendor.audio.calfile3=/vendor/etc/acdbdata/common/Handset_cal.acdb \
    persist.vendor.audio.calfile4=/vendor/etc/acdbdata/common/Hdmi_cal.acdb \
    persist.vendor.audio.calfile5=/vendor/etc/acdbdata/common/Headset_cal.acdb \
    persist.vendor.audio.calfile6=/vendor/etc/acdbdata/common/Speaker_cal.acdb

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.preview.ubwc=0 \
    video.disable.ubwc=1

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

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420
