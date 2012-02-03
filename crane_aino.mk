# crane aino product config

$(call inherit-product, device/softwinner/crane-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/crane-aino/overlay

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/kernel:kernel \
	device/softwinner/crane-aino/recovery.fstab:recovery.fstab

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/softwinner/crane-aino/init.sun4i.rc:root/init.sun4i.rc \
	device/softwinner/crane-aino/init.sun4i.usb.rc:root/init.sun4i.usb.rc \
	device/softwinner/crane-aino/media_profiles.xml:system/etc/media_profiles.xml \
	device/softwinner/crane-aino/camera.cfg:system/etc/camera.cfg 

#input device config
PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/crane-aino/hv_keypad.kl:system/usr/keylayout/hv_keypad.kl \
	device/softwinner/crane-aino/gt80x.idc:system/usr/idc/gt80x.idc

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/initlogo.rle:root/initlogo.rle \
	device/softwinner/crane-aino/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
	device/softwinner/crane-aino/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb \
	ro.sf.lcd_density=120 \
	ro.product.firmware=0.6

$(call inherit-product-if-exists, device/softwinner/crane-aino/modules/modules.mk)

PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := crane_aino
PRODUCT_DEVICE := crane-aino
PRODUCT_MODEL  := Novo7Advanced

