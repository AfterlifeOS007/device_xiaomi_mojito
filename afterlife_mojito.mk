#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common AfterLife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Product Specifics
PRODUCT_NAME := afterlife_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

# Gapps
# AFTERLIFE_GAPPS := true

AFTERLIFE_MAINTAINER := Sachin_07
AFTERLIFE_BUILD_TYPE := UNOFFICIAL

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true

# Pixel Charging
USE_PIXEL_CHARGING := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="mojito" \
    PRODUCT_NAME="mojito" \
