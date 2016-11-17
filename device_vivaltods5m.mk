$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/vivaltods5m/vivaltods5m-vendor.mk)

# Use high-density artwork where available
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/vivaltods5m/overlay

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/ramdisk/fstab.hawaii_ss_vivaltods5m:root/fstab.hawaii_ss_vivaltods5m \
	device/samsung/vivaltods5m/ramdisk/init.hawaii_ss_vivaltods5m.rc:root/init.hawaii_ss_vivaltods5m.rc \
	device/samsung/vivaltods5m/ramdisk/init.hawaii_ss_vivaltods5m_base.rc:root/init.hawaii_ss_vivaltods5m_base.rc \
	device/samsung/vivaltods5m/ramdisk/init.log.rc:root/init.log.rc \
	device/samsung/vivaltods5m/ramdisk/init.rc:root/init.rc \
	device/samsung/vivaltods5m/ramdisk/init.usb_hawaii_ss.rc:root/init.usb_hawaii_ss.rc \
	device/samsung/vivaltods5m/ramdisk/init.wifi.rc:root/init.wifi.rc \
	device/samsung/vivaltods5m/ramdisk/lpm.rc:root/lpm.rc \
	device/samsung/vivaltods5m/ramdisk/ueventd.hawaii_ss_vivaltods5m.rc:root/ueventd.hawaii_ss_vivaltods5m.rc # no need to cut off since init is patched.
	
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/vivaltods5m/configs/audio_policy.conf:system/etc/audio_policy.conf \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
 	device/samsung/vivaltods5m/configs/media_codecs.xml:system/etc/media_codecs.xml 

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/keylayouts/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	device/samsung/vivaltods5m/keylayouts/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	device/samsung/vivaltods5m/keylayouts/bcmpmu_on.kl:system/usr/keylayout/bcmpmu_on.kl \
	device/samsung/vivaltods5m/keylayouts/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/samsung/vivaltods5m/keylayouts/ist30xx_ts_input.kl:system/usr/keylayout/ist30xx_ts_input.kl

# Bluetooth config
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
	device/samsung/vivaltods5m/configs/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# WiFi config
PRODUCT_COPY_FILES += \
	device/samsung/vivaltods5m/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	device/samsung/vivaltods5m/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Charger
PRODUCT_PACKAGES += \
	charger_res_images

# Insecure ADBD
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	persist.service.adb.enable=0

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
    e2fsck \
    setup_fs
	
# Open-source lights HAL
PRODUCT_PACKAGES += \
	lights.hawaii
		
# Misc other modules
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	audio.primary.default \
	libnetcmdiface \
	libstagefrighthw \
	lights.hawaii

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=1	
	
# Wi-Fi
PRODUCT_PACKAGES += \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant

# Samsung Doze
PRODUCT_PACKAGES += \
	SamsungDoze

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	mobiledata.interfaces=rmnet0 \
	ro.telephony.ril_class=SamsungBCMRIL \
	persist.radio.multisim.config=dsds \
	cm.updater.uri=http://akane.02ch.in/CyanogenModOTA \
	ro.telephony.call_ring.multiple=0 \
	camera2.portability.force_api=1 \
	ro.telephony.call_ring=0

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk
include frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifeq ($(TARGET_BUILD_VARIANT),user)      
else      
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivaltods5m
PRODUCT_DEVICE := vivaltods5m
PRODUCT_MODEL := SM-G313HU
