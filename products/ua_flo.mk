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
$(call inherit-product, device/asus/flo/aosp_flo.mk)

PRODUCT_NAME   := ua_flo
PRODUCT_DEVICE := flo
PRODUCT_BRAND  := google
PRODUCT_MODEL  := Nexus 7
PRODUCT_MANUFACTURER := Asus

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"

BUILD_FINGERPRINT := google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys
