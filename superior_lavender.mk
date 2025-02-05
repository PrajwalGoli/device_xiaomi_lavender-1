#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

#Inherit some common lineage stuff
$(call inherit-product, vendor/superior/config/common.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi 
TARGET_USE_PIXEL_CHARGER := true
SUPERIOR_GAPPS := minimal

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender"


