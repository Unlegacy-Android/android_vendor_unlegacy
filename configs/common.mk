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

# Include our needed policies
include vendor/unlegacy/sepolicy/sepolicy.mk

# World APN list
PRODUCT_COPY_FILES += \
    vendor/unlegacy/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent

# Show SELinux status in settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Backup services whitelist
PRODUCT_COPY_FILES += \
    vendor/unlegacy/configs/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/unlegacy/overlay/common

# Common packages
PRODUCT_PACKAGES += \
    Browser
