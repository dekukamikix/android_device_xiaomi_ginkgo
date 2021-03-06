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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/ginkgo/overlay
# CarrierConfig
DEVICE_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ginkgo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := omni_ginkgo

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

VENDOR_RELEASE := 9/PKQ1.190616.001/V10.3.3.0.PCOINXM:user/release-keys
BUILD_FINGERPRINT := xiaomi/ginkgo/ginkgo:$(VENDOR_RELEASE)
OMNI_BUILD_FINGERPRINT := xiaomi/ginkgo/ginkgo:$(VENDOR_RELEASE)
OMNI_PRIVATE_BUILD_DESC := "'ginkgo-user 9 PKQ1.190616.001 V10.3.3.0.PCOINXM release-keys'"

#PLATFORM_SECURITY_PATCH_OVERRIDE := 2019-12-01

# Inherit from custom vendor
#$(call inherit-product, vendor/MiuiCamera/config.mk)
