# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# cdma
$(call inherit-product, vendor/eclipse/config/common_cdma.mk)

# phone
$(call inherit-product, vendor/eclipse/config/common_phone.mk)

# softkeys
$(call inherit-product, vendor/eclipse/config/commonsoftkeys.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toroplus
PRODUCT_NAME := eclipse_toroplus
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.2.1/JOP40D/L700GA02:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.2.1 JOP40D L700GA02 release-keys"
