USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Google/glass_1/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := glass_1

BOARD_KERNEL_CMDLINE := console=ttyO2,115200n8 vmalloc=500M androidboot.console=ttyO2 androidboot.carrier=wifi-only product_type=w cpuidle_sysfs_switch
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14028374016
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_CONFIG := notle_defconfig
TARGET_PREBUILT_KERNEL := device/Google/glass_1/kernel

BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/Google/glass_1/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true