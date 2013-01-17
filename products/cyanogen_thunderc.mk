# Include the stock APNS config file instead of the dev one
PRODUCT_COPY_FILES := \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    $(PRODUCT_COPY_FILES)

# Inherit device configuration for the thunderc, which will in turn call the
# necessary common code (device/lge/thunderc_common/thunderc_common.mk).
$(call inherit-product, device/lge/thunderc_$(SUB_MODEL)/thunderc_$(SUB_MODEL).mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

BUILD_ID := GINGERBREAD_$(SUB_MODEL)

PRODUCT_BRAND := $(CARRIER)
PRODUCT_DEVICE := thunderc_$(SUB_MODEL)
PRODUCT_MODEL := $(SUB_MODEL)
PRODUCT_MANUFACTURER := LGE
PRODUCT_NAME := cyanogen_thunderc_$(SUB_MODEL)
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=thunderc PRODUCT_NAME=thunderc BUILD_UTC_DATE=0 BUILD_ID=GRI40 BUILD_DISPLAY_ID="GRJ90 ($(shell date +%m%d%Y)/$(SUB_MODEL))" BUILD_FINGERPRINT=lge/thunderg/thunderg:2.3.3/GRI40/LG-P500-V20g.19C11F164C:user/release-keys PRIVATE_BUILD_DESC="thunderg-user 2.3.3 GRI40 LG-P500-V20g.19C11F164C release-keys"

# Live wallpaper packages
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers

CYANOGEN_NIGHTLY :=
CYANOGEN_EXPERIMENTAL :=
CM_BUILDTYPE := 
CYANOGEN_EXTRAVERSION := 
CYANOGEN_RELEASE := 
PRODUCT_VERSION_DEVICE_SPECIFIC := -lge
-include vendor/cyanogen/products/common_versions.mk

