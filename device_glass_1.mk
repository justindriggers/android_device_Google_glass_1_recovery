$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Google/glass_1/glass_1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Google/glass_1/overlay

LOCAL_PATH := device/Google/glass_1
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.omap4430.rc:root/init.recovery.omap4430.rc \
    $(LOCAL_PATH)/ueventd.omap4430.rc:root/ueventd.omap4430.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=glass-1
