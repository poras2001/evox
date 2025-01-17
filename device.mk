#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6250-common
$(call inherit-product, device/xiaomi/sm6250-common/atoll.mk)

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Tag

PRODUCT_PACKAGES += \
    android.hardware.nfc-service.nxp

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/android.hardware.se.omapi.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_nfc/com.nxp.mifare.xml

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-curtana.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-curtana.conf \
    $(LOCAL_PATH)/configs/thermal-engine-excalibur.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-excalibur.conf \
    $(LOCAL_PATH)/configs/thermal-engine-gram.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-gram.conf \
    $(LOCAL_PATH)/configs/thermal-engine-joyeuse.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-joyeuse.conf

# Inherit proprietary targets
$(call inherit-product, vendor/xiaomi/miatoll/miatoll-vendor.mk)

# Meme Camera
TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT := true
TARGET_INCLUDES_MIUI_CAMERA := true
$(call inherit-product-if-exists, vendor/xiaomi/camera/miuicamera.mk)
