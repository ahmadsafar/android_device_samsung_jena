#!/bin/sh

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
MODEL=GT-S6500D
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE

if [ ! -e ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor.mk ];
then
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor.mk
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

# Live wallpaper packages and Themes
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/__MANUFACTURER__/__DEVICE__/overlay

\$(call inherit-product, vendor/__MANUFACTURER__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF
fi

if [ ! -e ../../../vendor/$MANUFACTURER/$DEVICE/BoardConfigVendor.mk ];
then
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/BoardConfigVendor.mk
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

EOF
fi

(cat << EOF) > ../../../vendor/cyanogen/.gitignore
proprietary/*
products/cyanogen_jena.mk
EOF

if [ ! -e ../../../vendor/cyanogen/products/cyanogen_$DEVICE.mk ];
then
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MODEL__/$MODEL/g | sed s/__MANUFACTURER__/$MANUFACTURER/g | sed s/wew/$/g > ../../../vendor/cyanogen/products/cyanogen_$DEVICE.mk
# Inherit AOSP device configuration for blade.
wew(call inherit-product, device/samsung/jena/device___DEVICE__.mk)

# Inherit some common cyanogenmod stuff.
wew(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
wew(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen___DEVICE__
PRODUCT_BRAND := __MANUFACTURER__
PRODUCT_DEVICE := __DEVICE__
PRODUCT_MODEL := __MODEL__
PRODUCT_MANUFACTURER := __MANUFACTURER__
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=__DEVICE__ BUILD_ID=DXMH1 BUILD_VERSION_TAGS=release-keys BUILD_FINGERPRINT=samsung/__MODEL__/__MODEL__:2.3.6/GINGERBREAD/DXMH1:user/release-keys PRIVATE_BUILD_DESC="__MODEL__-user 2.3.6 GINGERBREAD DXMH1 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyMini2
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \\
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
EOF
fi
