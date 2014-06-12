## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := glass_1

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full.mk)

# Inherit device configuration
$(call inherit-product, device/Google/glass_1/device_glass_1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := glass_1
PRODUCT_NAME := cm_glass_1
PRODUCT_BRAND := Google
PRODUCT_MODEL := Glass 1
PRODUCT_MANUFACTURER := Google
