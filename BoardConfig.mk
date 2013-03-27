USE_CAMERA_STUB := true

BOARD_HAVE_QCOM_FM := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_QCOM_FM := true
QCOM_HARDWARE := true

# inherit from the proprietary version
-include vendor/huawei/u8655/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
#TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM := msm7627a
#TARGET_BOARD_PLATFORM := msm8960
#TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_BOOTLOADER_BOARD_NAME := u8655

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
#dev:    size   erasesize  name
#mtd0: 00500000 00020000 "boot"
#mtd1: 00500000 00020000 "recovery"
#mtd2: 00140000 00020000 "misc"
#mtd3: 00240000 00020000 "MTD-Crash"
#mtd4: 0ba00000 00020000 "system"
#mtd5: 03a00000 00020000 "cache"
#mtd6: 0a500000 00020000 "userdata"
#mtd7: 01400000 00020000 "userdata2"
#mtd8: 01400000 00020000 "cust"
#mtd9: 00140000 00020000 "MIBIB"
#mtd10: 00060000 00020000 "QCSBL"
#mtd11: 00800000 00020000 "OEMINFO"
#mtd12: 001a0000 00020000 "OEMSBL1"
#mtd13: 001a0000 00020000 "OEMSBL2"
#mtd14: 01e00000 00020000 "AMSS"
#mtd15: 00600000 00020000 "EFS2"
#mtd16: 00060000 00020000 "APPSBL"
#mtd17: 00040000 00020000 "FOTA"


BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x50500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a500000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/huawei/u8655/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true