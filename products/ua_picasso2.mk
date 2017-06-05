# Copyright (C) 2017 Unlegacy Android
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
$(call inherit-product, device/acer/picasso2/aosp_picasso2.mk)

PRODUCT_NAME := ua_picasso2
PRODUCT_DEVICE := picasso2
PRODUCT_BRAND := Acer
PRODUCT_MODEL := Picasso 2
PRODUCT_MANUFACTURER := Acer

# Device build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a700_emea_gb
