#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Boot control HAL
PRODUCT_PACKAGES += \
    bootctrl.xiaomi_sm8550.recovery \
    android.hardware.boot@1.2-impl-qti.recovery
    
PRODUCT_PACKAGES_DEBUG += \
    bootctl
    
# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl-qti \
    android.hardware.gatekeeper@1.0-service-qti

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service-qti

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 31

# VNDK API
PRODUCT_TARGET_VNDK_VERSION := 34

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# QSE
PRODUCT_PACKAGES += \
    libQSEEComAPI \
    libqdutils \
    libqservice

# Weaver
PRODUCT_PACKAGES += \
    android.hardware.weaver-service.nxp-qti

PRODUCT_PACKAGES += \
    android.hardware.weaver-V2-ndk

PRODUCT_COPY_FILES += \
     $(DEVICE_PATH)/recovery/root/vendor/lib64/ese_weaver.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/ese_weaver.so

