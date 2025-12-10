#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
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
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9
PRODUCT_NAME := statix_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tokay-user 16 BP3A.251105.015 14339231 release-keys" \
    BuildFingerprint=google/tokay/tokay:16/BP3A.251105.015/14339231:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

INCLUDE_PIXEL_LAUNCHER := true

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
