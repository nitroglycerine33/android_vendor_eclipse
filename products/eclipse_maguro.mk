## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GN-GSM

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# softkeys
$(call inherit-product, vendor/eclipse/config/commonsoftkeys.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := eclipse_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"
