#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from these configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/peridot/device.mk)

# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

## Device identifier
PRODUCT_DEVICE := peridot
PRODUCT_NAME := twrp_peridot
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F6
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
