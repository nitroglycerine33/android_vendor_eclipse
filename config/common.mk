PRODUCT_BRAND ?= eclipse

SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    persist.sys.root_access=1

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/eclipse/CHANGELOG.mkdn:system/etc/CHANGELOG-ECLIPSE.txt

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/eclipse/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/eclipse/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/eclipse/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/bin/sysinit:system/bin/sysinit 

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# userinit support
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/eclipse/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
    vendor/eclipse/proprietary/Term.apk:system/app/Term.apk \
    vendor/eclipse/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Prebuilt SunBeam live wallpaper
PRODUCT_COPY_FILES +=  \
    vendor/eclipse/proprietary/SunBeam.apk:system/app/SunBeam.apk \

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/eclipse/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/eclipse/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/eclipse/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# T-Mobile theme engine
include vendor/eclipse/config/themes_common.mk

# Required Eclipse packages
PRODUCT_PACKAGES += \
    LatinIME \
    Superuser \
    su

# Optional Eclipse packages
PRODUCT_PACKAGES += \
    VoicePlus \
    MusicFX \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic

# Custom CM packages
PRODUCT_PACKAGES += \
    CMFileManager \
    LockClock \
    Trebuchet

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

PRODUCT_PACKAGES += \
    CellBroadcastReceiver

# Extra tools in CM
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/eclipse/overlay/common
