#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Project ID Quota
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# AAPT conf
PRODUCT_AAPT_CONFIG := normal 
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

# Init
PRODUCT_PACKAGES += \
    fstab.hi3660 \
    fstab.hi3660.ramdisk \
    fstab.modem \
    init.connectivity.hi3660.rc \
    init.hi3660.rc \
    init.modem.hi3660.rc \
    init.usb.hi3660.rc \
    ueventd.hi3660.rc
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.hi3660.rc:$(TARGET_RECOVERY_OUT)/root/init.recovery.hi3660.rc

# RRO
PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/huawei/schubert/schubert-vendor.mk)
