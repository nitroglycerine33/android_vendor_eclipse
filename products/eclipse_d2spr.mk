$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/eclipse/config/nfc_enhanced.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/common_full_phone.mk)

# Inherit torch
$(call inherit-product, vendor/eclipse/config/torch.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.1.2/JZO54K/L710VPBMD4:user/release-keys" \
    PRIVATE_BUILD_DESC="d2spr-user 4.1.2 JZO54K L710VPBMD4 release-keys"

PRODUCT_NAME := eclipse_d2spr
PRODUCT_DEVICE := d2spr

PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/samsung
