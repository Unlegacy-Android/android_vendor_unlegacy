# Copyright (C) 2016 Unlegacy Android
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

# Inherit Unlegacy Android common configuration
$(call inherit-product, vendor/unlegacy/configs/common.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/lenovo/a2109/aosp_a2109.mk)

PRODUCT_NAME := ua_a2109
PRODUCT_DEVICE := a2109
PRODUCT_BRAND := Ideatab
PRODUCT_MODEL := A2109A
PRODUCT_MANUFACTURER := Lenovo

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=kai \
    BUILD_FINGERPRINT="Lenovo/IdeaTab_A2109A/A2109A:4.1.1/JRO03R/A2109A_A411_03_13_121126:user/release-keys" \
    PRIVATE_BUILD_DESC="kai-user 4.1.1 JRO03R A2109A_A411_03_13_121126 release-keys"

