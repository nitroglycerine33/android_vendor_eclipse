# Inherit some common CM stuff.
$(call inherit-product, vendor/eclipse/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/eclipse/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := MOTO X - XT1060
PRODUCT_NAME := eclipse_xt1060

$(call inherit-product, device/motorola/xt1060/full_xt1060.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT1060 \
    BUILD_PRODUCT=ghost_verizon \
    BUILD_FINGERPRINT=motorola/ghost_verizon/ghost:4.2.2/13.9.0Q2.X-116-MX-17-53/5:user/release-keys
