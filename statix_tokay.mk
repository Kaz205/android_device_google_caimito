#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Parts
$(call inherit-product, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product, vendor/google/pixelparts/face/face.mk)
$(call inherit-product, vendor/google/pixelparts/powershare/device.mk)

# Inherit device configuration
DEVICE_CODENAME := tokay
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/tokay
$(call inherit-product, device/google/zumapro/statix_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-statix.mk)
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9
PRODUCT_NAME := statix_$(DEVICE_CODENAME)

PRODUCT_BUILD_PROP_OVERRIDES := \
    BuildDesc="tokay-user 15 AP4A.241205.013 12621605 release-keys" \
    BuildFingerprint=google/tokay/tokay:15/AP4A.241205.013/12621605:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

PRODUCT_RESTRICT_VENDOR_FILES := false

INCLUDE_PIXEL_LAUNCHER := true

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
