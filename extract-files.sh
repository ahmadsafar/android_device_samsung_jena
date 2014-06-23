#!/bin/sh

# FIX ME!

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=jena
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.0
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata

# ril
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# omx libs
adb pull /system/lib/libmm-abl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmm-omxcore.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmosal.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmparser.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmparser_divxdrmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxOn2Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxrv9Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVp8Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqcomm_omx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# omx shared libs
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# camera
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libActionShot.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libCaMotion.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libPanoraMax1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libPlusMe.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libseccamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libseccameraadaptor.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/cameradata/datapattern_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
adb pull /system/cameradata/datapattern_420sp_jena.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
adb pull /system/cameradata/datapattern_front_420sp.yuv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata

# wifi
adb pull /system/wifi/ar6000.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/athwlan_tablet.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.01 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.03 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/device.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/wifi/ath6k/AR6003/hw2.1.1/otp.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1
adb pull /system/bin/hostapd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/wlandutservice ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/wlan_tool ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/wmiconfig ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# Audio
adb pull /system/lib/liba2dp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# GPS
adb pull /system/lib/hw/gps.msm7k.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/bin/gpsd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# Sensor
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/libacc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libacdapi_azi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# GPU
adb pull /system/lib/egl/eglsubAndroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOpenVG.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Binaries
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/abtfilt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/hci_qcomm_init ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/hciattach ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

## Battery, charging
adb pull /system/bin/playlpm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/charging_mode ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/lib/libQmageDecoder.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmage_bluesea.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/media/Disconnected.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_batteryerror.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_error.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/chargingwarning.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_5.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_10.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_15.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_20.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_25.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_30.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_35.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_40.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_45.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_50.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_55.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_60.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_65.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_70.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_75.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_80.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_85.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_90.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_95.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media
adb pull /system/media/battery_charging_100.qmg  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/media

# Other libs
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqc-opt.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmiservices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

## RIL related stuff
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rild:system/bin/rild

## OMX proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-abl.so:system/lib/libmm-abl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxrv9Dec.so:system/lib/libOmxrv9Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxVp8Dec.so:system/lib/libOmxVp8Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so

## OMX shared
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

## Camera proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libsamsungcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libsamsungcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libActionShot.so:system/lib/libActionShot.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libarccamera.so:system/lib/libarccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libCaMotion.so:system/lib/libCaMotion.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcaps.so:system/lib/libcaps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libPanoraMax1.so:system/lib/libPanoraMax1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libPlusMe.so:system/lib/libPlusMe.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libseccamera.so:system/lib/libseccamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_420sp_jena.yuv:system/cameradata/datapattern_420sp_jena.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv

## Atheros AR6003 firmware
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ar6000.ko:system/wifi/ar6000.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/athwlan_tablet.bin:system/wifi/ath6k/AR6003/hw2.1.1/athwlan_tablet.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin:system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.01:system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.03 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.03:system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.05 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin:system/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/device.bin:system/wifi/ath6k/AR6003/hw2.1.1/device.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wifi/ath6k/AR6003/hw2.1.1/otp.bin:system/wifi/ath6k/AR6003/hw2.1.1/otp.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hostapd:system/bin/hostapd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wlandutservice:system/bin/wlandutservice \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wlan_tool:system/bin/wlan_tool \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/wmiconfig:system/bin/wmiconfig

## Audio
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so 

## GPS
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/gpsd:system/bin/gpsd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/gps.msm7k.so:system/lib/hw/gps.msm7k.so
	
## GPU
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so

## Sensor
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libacc.so:system/lib/libacc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libacdapi_azi.so:system/lib/libacdapi_azi.so

## Binaries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/rmt_storage:system/bin/rmt_storage \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/abtfilt:system/bin/abtfilt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/hciattach:system/bin/hciattach

## Battery, charging	
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/playlpm:system/bin/playlpm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bin/charging_mode:system/bin/charging_mode \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmage_bluesea.so:system/lib/libqmage_bluesea.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/Disconnected.qmg:system/media/Disconnected.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_error.qmg:system/media/battery_error.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/chargingwarning.qmg:system/media/chargingwarning.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg

## Other libs
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libnv.so:system/lib/libnv.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libcm.so:system/lib/libcm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so
EOF

./setup-makefiles.sh
