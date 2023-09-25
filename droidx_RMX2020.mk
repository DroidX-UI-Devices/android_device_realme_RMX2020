#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common DroidX-UI stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := droidx_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2020
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX2020
PRODUCT_SYSTEM_NAME := RMX2020
PRODUCT_SYSTEM_DEVICE := RMX2020

# DroidX-UI additions
DROIDX_BUILD_TYPE := OFFICIAL
DROIDX_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_USE_MOTO_CALCULATOR := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_CALL_RECORDING := false
TARGET_USE_GOOGLE_TELEPHONY := false

# Build info
BUILD_FINGERPRINT := "realme/RMX2020/RMX2020:10/QP1A.190711.020/1651798546:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6769-user 10 QP1A.190711.020 68b77aba7cb33275 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
