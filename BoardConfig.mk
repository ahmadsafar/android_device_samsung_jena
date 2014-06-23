# Copyright (C) 2012 The CyanogenMod Project
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
# BoardConfig.mk
#
# Product compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

## Kernel, bootloader etc.
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/samsung/jena/kernel
COPYBIT_MSM7K := true
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
BOARD_USE_SCREENCAP:= true

## Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CORTEX_CACHE_LINE_32 := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_SPECIFIC_HEADER_PATH := device/samsung/jena/include
QCOM_TARGET_PRODUCT  := msm7627a

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

## Assert
TARGET_BOOTLOADER_BOARD_NAME := jena
TARGET_OTA_ASSERT_DEVICE := jena,GT-S6500,GT-S6500D,GT-S6500T,GT-S6500I

## Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD

## V8
JS_ENGINE := v8
HTTP := chrome

## JIT
WITH_JIT := true
ENABLE_JSC_JIT := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := si4708
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

## Camera
USE_CAMERA_STUB := false
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif
BOARD_LIBCAMERA_MISSING_AUTOFOCUS := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_QCOM

## Media
TARGET_USE_SOFTWARE_AUDIO_AAC := true
TARGET_PROVIDES_LIBAUDIO := true

## Graphics
USE_OPENGL_RENDERER := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_EGL_CFG := device/samsung/jena/prebuilt/lib/egl/egl.cfg

## QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK

## Other QCOM
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

## GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7k
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_NEEDS_XTRA := true

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
BOARD_CUSTOM_BLUEDROID := ../../../device/samsung/jena/bluedroid/bluetooth.c
BOARD_FORCE_STATIC_A2DP := true

## Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME := ar6000
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_EXT_MODULE_PATH := /system/lib/modules/librasdioif.ko
WIFI_EXT_MODULE_NAME := librasdioif

## RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

## Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 24

## UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/gadget/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun%d/file"

## Recovery
TARGET_RECOVERY_INITRC := device/samsung/jena/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/jena/recovery.fstab
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/jena/recovery/graphics.c
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p23
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true

## Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p16
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

## Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 979369984
