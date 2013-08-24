# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/eclipse/config/nfc_enhanced.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/common_full_phone.mk)

# Inherit torch
$(call inherit-product, vendor/eclipse/config/torch.mk)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.3 JWR66V 737497 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toro
PRODUCT_NAME := eclipse_toro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

