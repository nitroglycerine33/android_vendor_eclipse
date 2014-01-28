# Inherit common CM stuff
$(call inherit-product, vendor/eclipse/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

$(call inherit-product, vendor/eclipse/config/telephony.mk)
