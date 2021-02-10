#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Flatten APEXs for performance
OVERRIDE_TARGET_FLATTEN_APEX := true

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.soundtrigger@2.3-impl \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.primary.bengal \
    audio.primary.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth.audio-impl \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-service_64 \
    android.hardware.camera.provider@2.4-impl \
    vendor.qti.hardware.camera.device@1.0.vendor \
    vendor.qti.hardware.camera.postproc@1.0.vendor \

PRODUCT_PACKAGES += \
    libcamera2ndk_vendor \
    libdng_sdk.vendor \
    libstdc++.vendor \
    libgui_vendor

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sm6115-common/sm6115-common-vendor.mk)
