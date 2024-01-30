#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from stanford device
$(call inherit-product, device/huawei/schubert/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

LINEAGE_BUILDTYPE := RELEASE

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := schubert
PRODUCT_NAME := lineage_schubert
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := STF-L09
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SHT-AL09-user 9.1.0 HUAWEISHT-AL09 332-OVS-LGRP2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "HUAWEI/SHT-AL09/HWSHT:9/HUAWEISHT-AL09/9.1.0.332C432:user/release-keys"
