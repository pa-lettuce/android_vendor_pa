ifeq (pa_lettuce,$(TARGET_PRODUCT))

# Inherit all device-specific stuff
$(call inherit-product, device/yu/lettuce/full_lettuce.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Include correct bootanimation size
TARGET_BOOT_ANIMATION_RES := 720

# Include common AOSPA stuff
include vendor/pa/main.mk

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_NAME := pa_lettuce
BOARD_VENDOR := yu
PRODUCT_DEVICE := lettuce
PRODUCT_BRAND := YU

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:5.1.1/LMY49J/YOG4PAS8A8:user/release-keys \
    PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY49J YOG4PAS8A8 release-keys"
endif
endif
