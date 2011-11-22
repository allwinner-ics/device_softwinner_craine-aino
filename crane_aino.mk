# crane aino product config

$(call inherit-product, device/softwinner/crane-common/ProductCommon.mk)

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/softwinner/crane-aino/init.sun4i.rc:root/init.sun4i.rc 

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/crane-aino/hv_keypad.kl:system/usr/keylayout/hv_keypad.kl \
	device/softwinner/crane-aino/gt80x.idc:system/usr/idc/gt80x.idc
	
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

PRODUCT_COPY_FILES += \
	device/softwinner/crane-evb/vold.fstab:system/etc/vold.fstab

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := crane_aino
PRODUCT_DEVICE := crane-aino
PRODUCT_MODEL  := Novo7Advanced

