$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

IS_MAPLE_DSDS := true
WITH_VOLTE := true

# Inherit device configuration
$(call inherit-product, device/sony/maple/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

## BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

## PA
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_DISABLES_GAPPS := true	# set is false if you want gapps
PA_BUILDTYPE := BETA

$(call inherit-product, vendor/pa/config/common.mk)
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions

include device/sony/maple/ims_prop.mk

PRODUCT_NAME := pa_maple
PRODUCT_DEVICE := maple
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple

# Finderpint
BUILD_FINGERPRINT := google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.build.fingerprint=google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile
