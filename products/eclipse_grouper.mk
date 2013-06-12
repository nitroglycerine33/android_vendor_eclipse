#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The Carbon Project
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

# name
PRODUCT_RELEASE_NAME := Nexus7

# device
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# languages
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO nn_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL ka_GE lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN

# tablet
$(call inherit-product, vendor/eclipse/config/common_tablet.mk)

# products
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_NAME := eclipse_grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=533553 \
    PRODUCT_NAME=nakasi \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 533553 release-keys" \
    BUILD_FINGERPRINT="google/nakasi/grouper:4.2.1/JOP40D/533553:user/release-keys"

PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/media/hdpi-n7/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/grouper
