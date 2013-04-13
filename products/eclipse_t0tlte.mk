# Specify phone tech before including full_phone
$(call inherit-product, vendor/eclipse/config/common_cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := i605

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/eclipse/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i605
PRODUCT_NAME := eclipse_t0tlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I605
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltecdma BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.1.1/JRO03C/I605VRALJB:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.1.1 JRO03C I605VRALJB release-keys"

PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip
