# Copyright (C) 2022 Paranoid Android
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

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/NTCamera-google-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/NTCamera-google-permissions.xml \
    $(LOCAL_PATH)/configs/default-permissions-NTCamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-NTCamera.xml \
    $(LOCAL_PATH)/configs/gallery-google-lens-permissions.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/gallery-google-lens-permissions.xml \
    $(LOCAL_PATH)/configs/nothing-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/nothing-hiddenapi-package-allowlist.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-NTCamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-NTCamera.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-NothingExperience.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-NothingExperience.xml

# Properties
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.nothing.camera \
    ro.com.google.lens.oem_camera_package=com.nothing.camera \
    vendor.camera.aux.packagelist=com.nothing.camera
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vendor
$(call inherit-product, vendor/nothing/camera-Spacewar/camera-Spacewar-vendor.mk)
