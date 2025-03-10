#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spartan device
$(call inherit-product, device/realme/spartan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_spartan
PRODUCT_DEVICE := spartan
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371

# Axion stuff
AXION_MAINTAINER := Bijoy
AXION_PROCESSOR := Snapdragon_870
TARGET_SUPPORTED_REFRESH_RATES := 60,120
TARGET_ENABLES_IMS_OVERRIDES := true
TARGET_SUPPORTS_KERNEL_MANAGER := true
TARGET_TOUCH_BOOST_SUPPORTED := true

# AxionFX
TARGET_INCLUDE_AXFX := true

# Camera
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 16

# Doze gestures
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3371-user 14 UKQ1.230924.001 S.1d262cb-66b86-66b87 release-keys" \
    BuildFingerprint=realme/RMX3371/RE54E4L1:14/UKQ1.230924.001/S.1d262cb-66b86-66b87:user/release-keys \
    DeviceName=RE54E4L1 \
    DeviceProduct=RMX3371 \
    SystemDevice=RE54E4L1 \
    SystemName=RMX3371
