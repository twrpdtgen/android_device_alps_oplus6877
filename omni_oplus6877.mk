#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from oplus6877 device
$(call inherit-product, device/alps/oplus6877/device.mk)

PRODUCT_DEVICE := oplus6877
PRODUCT_NAME := omni_oplus6877
PRODUCT_BRAND := alps
PRODUCT_MODEL := oplus6877
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_oplus6877-user 11 RP1A.200720.011 1650817892671 release-keys"

BUILD_FINGERPRINT := alps/vnd_oplus6877/oplus6877:11/RP1A.200720.011/1650817892671:user/release-keys
