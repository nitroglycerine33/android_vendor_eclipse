## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# softkeys
$(call inherit-product, vendor/eclipse/config/commonsoftkeys.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := xt907
PRODUCT_NAME := eclipse_xt907

$(call inherit-product, device/motorola/xt907/full_xt907.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt907 BUILD_PRODUCT=xt907 BUILD_FINGERPRINT=motorola/xt907/scorpion_mini:4.1.1/9.8.1Q_25/35:user/release-keys

PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/media/hdpi-qHD/bootanimation.zip:system/media/bootanimation.zip
