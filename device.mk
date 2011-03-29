#
# Copyright (C) 2010 The Android Open Source Project
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

$(call inherit-product, device/moto/wingray/device_base.mk)

PRODUCT_COPY_FILES += \
    device/moto/stingray/ril/tty2ttyd:system/bin/tty2ttyd \
    device/moto/stingray/apns-conf.xml:system/etc/apns-conf.xml

ifneq ($(AP_RIL_BLDSRC),1)
PRODUCT_COPY_FILES += \
    device/moto/stingray/ril/libmoto_cdma_ril.so:system/lib/libmoto_cdma_ril.so \
    device/moto/stingray/ril/libmoto_rds_ril.so:system/lib/libmoto_rds_ril.so \
    device/moto/stingray/ril/libmoto_qmi_ril.so:system/lib/libmoto_qmi_ril.so \
    device/moto/stingray/ril/libmoto_nwif_ril.so:system/lib/libmoto_nwif_ril.so \
    device/moto/stingray/ril/libmoto_lte_ril.so:system/lib/libmoto_lte_ril.so \
    device/moto/stingray/ril/libmoto_db_ril.so:system/lib/libmoto_db_ril.so \
    device/moto/stingray/ril/libmoto_mm_ril.so:system/lib/libmoto_mm_ril.so
endif

# Overrides
DEVICE_PACKAGE_OVERLAYS := \
    device/moto/stingray/overlay device/moto/wingray/overlay
