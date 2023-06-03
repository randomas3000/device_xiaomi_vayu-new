#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

PRODUCT_NAME := cherish_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 RKQ1.200826.002 V14.0.1.0.TJUMIXM release-keys"

BUILD_FINGERPRINT := POCO/vayu_global/vayu:13/RKQ1.200826.002/V14.0.1.0.TJUMIXM:user/release-keys

# CherishOS additions
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
CHERISH_VANILLA := true

# maintainer stuff
CHERISH_BUILD_TYPE := OFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=randomas3000
