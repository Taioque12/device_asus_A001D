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

# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from sakura device
$(call inherit-product, device/asus/A001D/device.mk)

# Inherit some common FluidOS.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A001D
PRODUCT_NAME := fluid_A001D
BOARD_VENDOR := asus
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_A001D

# Gapps Flag
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
IS_PHONE := true
TARGET_INCLUDE_GAPPS := true

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

#Fluid AboutPhone
PRODUCT_PRODUCT_PROPERTIES += \
   ro.fluid.maintainer=Leo \
   ro.fluid.cpu=SD625

#Official Fluid
FLUID_BUILD_TYPE := UNOFFICIAL
