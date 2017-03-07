# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-mokee.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.1/NOF27B/3687361:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.1 NOF27B 3687361 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
