#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Flatten APEXs for performance
OVERRIDE_TARGET_FLATTEN_APEX := true

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sm6115-common/sm6115-common-vendor.mk)
