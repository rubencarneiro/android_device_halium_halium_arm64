#
# Copyright (C) 2020 The LineageOS Project
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

# Enable dynamic partition size
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true

# Ubuntu Touch additional properties
PRODUCT_PROPERTY_OVERRIDES += \
    ubuntu.widi.supported=1

# init scripts
PRODUCT_PACKAGES += \
    init.disabled.rc \
    init.halium.rc \
    vndk-detect \
    on-post-data.sh
    
# Custom Charge Animation
PRODUCT_PACKAGES += \
    charger_res_images

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# SPL fix
PRODUCT_PACKAGES += \
    getSPL

# Test tools
PRODUCT_PACKAGES += \
    bootctl \
    vintf

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
