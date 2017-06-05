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
$(call inherit-product, device/bn/ovation/aosp_ovation.mk)

PRODUCT_NAME   := ua_ovation
PRODUCT_DEVICE := ovation
PRODUCT_BRAND  := NOOK
PRODUCT_MODEL  := Nook HD+
PRODUCT_MANUFACTURER := BN LLC

# Device build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=HDplus
