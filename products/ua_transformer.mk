# Copyright (C) 2018 Unlegacy Android
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
$(call inherit-product, device/asus/transformer/aosp_transformer.mk)

PRODUCT_NAME   := ua_transformer
PRODUCT_DEVICE := transformer
PRODUCT_BRAND  := Asus
PRODUCT_MODEL  := Asus Transformer TF
PRODUCT_MANUFACTURER := Asus

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=EeePad \
    BUILD_FINGERPRINT="asus/WW_epad/EeePad:4.2.1/JOP40D/WW_epad-10.6.1.27.5-20130913:user/release-keys " \
    PRIVATE_BUILD_DESC="WW_epad-user 4.2.1 JOP40D WW_epad-10.6.1.27.5-20130913 release-keys"
