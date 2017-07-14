#
# Copyright (C) 2015 Schischu
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

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true

PRODUCT_PACKAGES += \
	init.universal5420.rc \
    init.baseband.rc \
	init.target.rc \
	ueventd.universal5420.rc

PRODUCT_COPY_FILES += \
    device/samsung/klimtlte/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/samsung/klimtlte/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

DEVICE_PACKAGE_OVERLAYS += \
    device/samsung/klimtlte/overlay

# Shim
PRODUCT_PACKAGES += \
    libshim

# Radio
PRODUCT_PACKAGES += \
    libril \
    librilutils \
    rild \
    libxml2 \
    libprotobuf-cpp-full \
    modemloader

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# setup dalvik vm configs, hwui memory configs.
#$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Copy vendor proprietary files
$(call inherit-product, vendor/samsung/klimtlte/klimtlte-vendor.mk)

# Import the common tree changes
include device/samsung/chagall-klimt-common/device.mk
