USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/heatnfc3g/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii

# Assert
TARGET_OTA_ASSERT_DEVICE := heatnfc3g,G310HN,SM-G310HN,hawaii
TARGET_EXTERNAL_APPS = sdcard1
# Kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_heatnfc3g_rev00_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/heatnfc3g
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --second device/samsung/heatnfc3g/boot.img-second --tags_offset 0x00000100

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 907096000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2189426688
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144 #BOARD_KERNEL_PAGESIZE * 64

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/heatnfc3g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/heatnfc3g/bluetooth/libbt_vndcfg_G310HN.txt

# Connectivity - Wi-Fi
WPA_BUILD_SUPPLICANT := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG
BOARD_NO_WIFI_HAL           := true
BOARD_HAVE_SAMSUNG_WIFI     := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
  endif
endif

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/heatnfc3g/configs/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DEGL_NEEDS_FNW -DHAWAII_HWC
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true

# libutils
#COMMON_GLOBAL_CFLAGS += -DREFBASE_JB_MR1_COMPAT_SYMBOLS

# libwvm.so
#COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# opengl
BOARD_USE_BGRA_8888 := true

# Audio
#BOARD_USES_ALSA_AUDIO := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-heatnfc3g.hawaii

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/heatnfc3g/ril/

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/heatnfc3g/ramdisk/fstab.hawaii_ss_heatnfc3g
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT                := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION                 := true
BOARD_RECOVERY_HANDLES_MOUNT                := true
BOARD_USES_MMCUTILS                         := true
BOARD_USE_USB_MASS_STORAGE_SWITCH           := true
BOARD_SUPPRESS_EMMC_WIPE                    := true
TARGET_RECOVERY_DENSITY                     := hdpi

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/heatnfc3g/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/heatnfc3g/include

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/heatnfc3g/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
