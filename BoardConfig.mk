#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := walleye
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_DIR)/prebuilt/Image.gz-dtb
TARGET_KERNEL_CONFIG := muskie_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/google/wahoo
TARGET_NEEDS_DTBOIMAGE := true

BOARD_KERNEL_CMDLINE += androidboot.hardware=$(TARGET_BOOTLOADER_BOARD_NAME) androidboot.console=ttyMSM0 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=2048
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += raid=noautodetect
BOARD_KERNEL_CMDLINE += usbcore.autosuspend=7

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_OFFSET      := 0x80000
BOARD_KERNEL_TAGS_OFFSET := 0x02500000
BOARD_RAMDISK_OFFSET     := 0x02700000
BOARD_MKBOOTIMG_ARGS     := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)


# Platform
TARGET_BOARD_PLATFORM := msm8998

# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_WIPE := $(LOCAL_DIR)/recovery/root/etc/recovery.wipe
TARGET_RECOVERY_FSTAB := $(LOCAL_DIR)/recovery/root/etc/fstab.hardware

BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26503790080
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# DTBO partition definitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

TARGET_COPY_OUT_VENDOR := vendor

# Install odex files into the other system image
BOARD_USES_SYSTEM_OTHER_ODEX := true

BOARD_ROOT_EXTRA_FOLDERS := persist firmware

QCOM_BOARD_PLATFORMS += msm8998

# TWRP
ALLOW_MISSING_DEPENDENCIES = true
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_DEFAULT_BRIGHTNESS := "80"
TW_INCLUDE_CRYPTO := true
AB_OTA_UPDATER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_RECOVERY_FSTAB := $(LOCAL_DIR)/recovery.fstab
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.security_patch;ro.build.version.release"
TW_USE_TOOLBOX := true
BOARD_VNDK_RUNTIME_DISABLE := true
TW_INCLUDE_REPACKTOOLS := true
TW_DELAY_TOUCH_INIT_MS := 1000
TW_EXTRA_LANGUAGES := true
PLATFORM_SECURITY_PATCH := 2099-12-31
USE_RECOVERY_INSTALLER := true
RECOVERY_INSTALLER_PATH := $(LOCAL_DIR)/installer
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone7/temp
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# SHRP Feature
SHRP_PATH := device/google/walleye
SHRP_DEVICE_CODE := walleye
SHRP_MAINTAINER := ReallySnow
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A/B
SHRP_EDL_MODE := 1
SHRP_DARK := true
SHRP_FLASH := 1
SHRP_AB := true
SHRP_INTERNAL：= /sdcard
SHRP_EXPRESS := true
