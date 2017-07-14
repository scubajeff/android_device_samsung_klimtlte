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

include device/samsung/chagall-klimt-common/BoardConfig.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/klimtlte/bluetooth

# RIL
BOARD_PROVIDES_LIBRIL := true
# hardware/samsung/ril
BOARD_MODEM_TYPE := xmm7260
BOARD_RIL_CLASS := ../../../device/samsung/klimtlte/ril
BOARD_MODEM_NEEDS_VIDEO_CALL_FIELD := true

BOARD_CAMERA_FRONT_ROTATION := 270
BOARD_CAMERA_BACK_ROTATION := 90

# Kernel (CM version)
TARGET_KERNEL_SOURCE := kernel/samsung/klimtlte
TARGET_KERNEL_CONFIG := lineageos_deathly_klimtlte_defconfig

# Bootloader
TARGET_OTA_ASSERT_DEVICE := klimtlte

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/klimtlte/sepolicy
