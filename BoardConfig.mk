# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/softwinner/crane-common/BoardConfigCommon.mk

# Gsensor board config
# we can use this string : mma7660, mxc622x , bma250
SW_BOARD_USES_GSENSOR_TYPE := bma250
SW_BOARD_GSENSOR_DIRECT_X := false
SW_BOARD_GSENSOR_DIRECT_Y := true
SW_BOARD_GSENSOR_DIRECT_Z := true
SW_BOARD_GSENSOR_XY_REVERT := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X

# Wifi chipset select
# usb wifi "rtl8192cu"; sdio wifi "nanowifi"/"ar6302"/"usibcm4329"
SW_BOARD_USR_WIFI := nanowifi

