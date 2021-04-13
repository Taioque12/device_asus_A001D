#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from A001D device
$(call inherit-product, device/asus/A001D/device.mk)

#PE Props
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A001D
PRODUCT_NAME := aosp_A001D
BOARD_VENDOR := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_A001D

# PixelPlusUI Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
  ro.ppui.device_name=Max Shot \
  ro.ppui.version=3.4 \
  ro.ppui.version_code=A001D \
  ro.ppui.is_official=true \
  ro.ppui.maintainer_name=mathpfvr