# Release name
PRODUCT_RELEASE_NAME := heatnfc3g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/heatnfc3g/device_heatnfc3g.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := heatnfc3g
PRODUCT_NAME := cm_heatnfc3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G310HN
PRODUCT_CHARACTERISTICS := phone
