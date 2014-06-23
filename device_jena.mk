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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

## Video
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore

## Graphics
PRODUCT_PACKAGES += \
    gralloc.msm7k \
    copybit.jena

## Misc.
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    erase_image \
    flash_image \
    dump_image \
    toggleshutter \
    screencap \
    FM \
    com.android.future.usb.accessory

## Bluetooth
PRODUCT_PACKAGES += \
    bdaddr_read \
    hciconfig \
    hcitool

## Other hardware
PRODUCT_PACKAGES += \
    lights.jena

PRODUCT_PACKAGES += \
     sec_jack.kcm \
     sec_key.kcm

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

## Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

## Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/GT-S6500.rle:root/GT-S6500.rle \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc
   
## Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

## Network
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    $(LOCAL_PATH)/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs

## Vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

## Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv 
	
## Keychar
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keychars/7x27a_kp.kcm.bin:system/usr/keychars/7x27a_kp.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \

## Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Kernel Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/dal_remotetest.ko:/system/lib/modules/dal_remotetest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_oobtest.ko:/system/lib/modules/mtd_oobtest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_pagetest.ko:/system/lib/modules/mtd_pagetest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_readtest.ko:/system/lib/modules/mtd_readtest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_speedtest.ko:/system/lib/modules/mtd_speedtest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_stresstest.ko:/system/lib/modules/mtd_stresstest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_subpagetest.ko:/system/lib/modules/mtd_subpagetest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_torturetest.ko:/system/lib/modules/mtd_torturetest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_nandecctest.ko:/system/lib/modules/mtd_nandecctest.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mtd_erasepart.ko:/system/lib/modules/mtd_erasepart.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/evbug.ko:/system/lib/modules/evbug.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tuner-xc2028.ko:/system/lib/modules/tuner-xc2028.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tuner-simple.ko:/system/lib/modules/tuner-simple.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tuner-types.ko:/system/lib/modules/tuner-types.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mt20xx.ko:/system/lib/modules/mt20xx.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tda8290.ko:/system/lib/modules/tda8290.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tea5767.ko:/system/lib/modules/tea5767.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tea5761.ko:/system/lib/modules/tea5761.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tda9887.ko:/system/lib/modules/tda9887.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tda827x.ko:/system/lib/modules/tda827x.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tda18271.ko:/system/lib/modules/tda18271.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/xc5000.ko:/system/lib/modules/xc5000.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mt2060.ko:/system/lib/modules/mt2060.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mt2266.ko:/system/lib/modules/mt2266.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/qt1010.ko:/system/lib/modules/qt1010.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mt2131.ko:/system/lib/modules/mt2131.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mxl5005s.ko:/system/lib/modules/mxl5005s.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mxl5007t.ko:/system/lib/modules/mxl5007t.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mc44s803.ko:/system/lib/modules/mc44s803.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/max2165.ko:/system/lib/modules/max2165.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/tda18218.ko:/system/lib/modules/tda18218.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mmc_test.ko:/system/lib/modules/mmc_test.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/oprofile.ko:/system/lib/modules/oprofile.ko

# Calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/calib.dat:/system/etc/calib.dat \
    $(LOCAL_PATH)/prebuilt/etc/param.dat:/system/etc/param.dat \
    $(LOCAL_PATH)/prebuilt/etc/sensors.dat:/system/etc/sensors.dat

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.cwm.enable_key_repeat=true

# Inherit the Vendor Blobs
$(call inherit-product-if-exists, vendor/samsung/jena/jena-vendor.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_jena
PRODUCT_DEVICE := jena
PRODUCT_MODEL := GT-S6500D

PRODUCT_LOCALES += mdpi

## Other
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_TAGS += dalvik.gc.type-precise
