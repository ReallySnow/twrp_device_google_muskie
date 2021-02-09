#
# Copyright 2021 The Android Open Source Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 9 PQ3A.190801.002 5670241 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:9/PQ3A.190801.002/5670241:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)
