# Specify phone tech before including full_phone
$(call inherit-product, vendor/eclipse/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := i605

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/cdma.mk)

# Inherit some common Eclipse stuff.
$(call inherit-product, vendor/eclipse/config/common_full_phone.mk)

# Inherit torch
$(call inherit-product, vendor/eclipse/config/torch.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i605
PRODUCT_NAME := eclipse_i605
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I605
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.1.2/JZO54K/I605VRAMC3:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.1.2 JZO54K I605VRAMC3 release-keys"

PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/samsung

