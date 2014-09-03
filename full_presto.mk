# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for presto hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

## Specify phone tech before including full_phone
$(call inherit-product, vendor/du/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from presto device
$(call inherit-product, device/pantech/presto/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME         := full_presto
PRODUCT_DEVICE       := presto
PRODUCT_BRAND        := ATT
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL        := PantechP9070

# Release name
PRODUCT_RELEASE_NAME := presto

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH  := 480

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=PantechP9070 TARGET_DEVICE=PantechP9070 BUILD_FINGERPRINT="ATT/PantechP9070/presto:4.0.4/IMM76I/presto_0903:user/release-keys" PRIVATE_BUILD_DESC="Pantech Presto P9070 release-keys"
