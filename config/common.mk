# Copyright (C) 2014 Elemental X Designs
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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/eclipse/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# Screen recorder
PRODUCT_PACKAGES += \
    libscreenrecorder \
    ScreenRecorder

# T-Mobile theme engine
include vendor/eclipse/config/themes_common.mk

# Versioning System
ifdef ECLIPSE_BUILD_EXTRA
    ECLIPSE_POSTFIX := $(ECLIPSE_BUILD_EXTRA)
endif
ifndef ECLIPSE_BUILD_TYPE
    ECLIPSE_BUILD_TYPE := OFFICIAL
    PLATFORM_VERSION_CODENAME := OFFICIAL
    ECLIPSE_POSTFIX := $(shell date +"%Y%m%d-%H%M")
endif

# Set all versions
ECLIPSE_VERSION := Eclipse-$(ECLIPSE_POSTFIX)
ECLIPSE_MOD_VERSION := Eclipse-$(ECLIPSE_POSTFIX)-$(ECLIPSE_BUILD)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    eclipse.ota.version=$(ECLIPSE_POSTFIX) \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.modversion=$(ECLIPSE_MOD_VERSION)
    
