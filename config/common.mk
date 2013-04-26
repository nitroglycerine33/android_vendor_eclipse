# brand
PRODUCT_BRAND ?= Eclipse

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# packages
PRODUCT_PACKAGES += \
    Camera \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    FileManager \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    NoiseField \
    PhaseBeam \
    Torch \
    Trebuchet \
    Wallpapers

PRODUCT_PACKAGES += \
    CellBroadcastReceiver

# prebuilts
PRODUCT_PACKAGES += \
    LatinIME \
    LockClock \
    Superuser

# tools
PRODUCT_PACKAGES += \
    armzipalign \
    e2fsck \
    mke2fs \
    tune2fs \
    nano
	
# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# themes
include vendor/eclipse/config/theme_chooser.mk

# overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/common

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cm/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/cm/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/cm/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cm/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
    vendor/cm/proprietary/Term.apk:system/app/Term.apk \
    vendor/cm/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# initd
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks

# prebuilt
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/xbin/su:system/xbin/su \
    vendor/eclipse/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/eclipse/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/eclipse/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/eclipse/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# sip/voip
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# nfc
PRODUCT_COPY_FILES += \
    vendor/eclipse/config/permissions/com.eclipse.android.xml:system/etc/permissions/com.eclipse.android.xml \
    vendor/eclipse/config/permissions/com.eclipse.nfc.enhanced.xml:system/etc/permissions/com.eclipse.nfc.enhanced.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/mkshrc:system/etc/mkshrc

PRODUCT_PROPERTY_OVERRIDES += \
  ro.elemental.version=1.0
