# Inherit common CM stuff
$(call inherit-product, vendor/eclipse/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

PRODUCT_PACKAGES += \
    Focal \
    Mms \
    Stk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

