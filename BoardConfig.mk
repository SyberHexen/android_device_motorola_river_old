#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from motorola msm8953-common
-include device/motorola/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/payton

# Assertions
TARGET_OTA_ASSERT_DEVICE := river

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# Kernel
TARGET_KERNEL_CONFIG := river_defconfig

# NFC
BOARD_NFC_CHIPSET := pn553

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        #    32768 * 1024 mmcblk0p41-42
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2952790016    #  2883584 * 1024 mmcblk0p62-63
BOARD_VENDORIMAGE_PARTITION_SIZE := 861507584     #   841316 * 1024 mmcblk0p60-61

# Power
TARGET_HAS_NO_WLAN_STATS := true

# Treble
PRODUCT_SHIPPING_API_LEVEL := 25

# inherit from the proprietary version
-include vendor/motorola/river/BoardConfigVendor.mk
