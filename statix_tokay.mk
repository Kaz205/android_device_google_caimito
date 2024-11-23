#
# Copyright (c) 2024 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/caimito/aosp_tokay.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product, vendor/google/pixelparts/face/face.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_tokay
PRODUCT_MODEL := Pixel 9
PRODUCT_BRAND := google

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
