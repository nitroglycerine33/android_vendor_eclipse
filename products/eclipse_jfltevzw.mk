$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/eclipse/config/nfc_enhanced.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/common_full_phone.mk)

# Inherit torch
$(call inherit-product, vendor/eclipse/config/torch.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:4.2.2/JDQ39/I545VRUAMDK:user/release-keys" PRIVATE_BUILD_DESC="jfltevzw-user 4.2.2 JDQ39 I545VRUAMDK release-keys"

PRODUCT_NAME := eclipse_jfltevzw
PRODUCT_DEVICE := jfltevzw

PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/samsung
