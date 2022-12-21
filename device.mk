#
# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/htc/hima/hima-vendor.mk)
# Device was launched with L
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_ENFORCE_RRO_TARGETS := framework-res

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml\
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
     frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.software.market.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.software.market.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.htcadaptivesound_c.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.htcadaptivesound_c.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.sensor.autocalibration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.autocalibration.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.sensor.sensorhub.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.sensorhub.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.voicedictation_c.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.voicedictation_c.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.key.dap.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.voicedictation_c.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.sensor.hallsensor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.voicedictation_c.xml \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-gesturehandler.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-permissions-gesturehandler.xml \
	$(LOCAL_PATH)/configs/permissions/imscm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/imscm.xml \
	$(LOCAL_PATH)/configs/permissions/qcrilhook.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qcrilhook.xml \
	$(LOCAL_PATH)/configs/permissions/qti_permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/qti_permissions.xml \
	$(LOCAL_PATH)/configs/permissions/embms.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/embms.xml \
	$(LOCAL_PATH)/configs/permissions/com.verizon.services.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.verizon.services.xml \
	$(LOCAL_PATH)/configs/permissions/embms_permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/embms_permissions.xml \
	$(LOCAL_PATH)/configs/permissions/com.verizon.apn.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.verizon.apn.xml \
	$(LOCAL_PATH)/configs/permissions/features-verizon.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/features-verizon.xml \
	$(LOCAL_PATH)/configs/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/qti_whitelist.xml \
	$(LOCAL_PATH)/configs/permissions/QtiTelephonyService.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/QtiTelephonyService.xml \
	$(LOCAL_PATH)/configs/permissions/telephonyservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/telephonyservice.xml \
	$(LOCAL_PATH)/configs/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
	$(LOCAL_PATH)/configs/permissions/privapp-qcrilmsgtunnel.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qcrilmsgtunnel.xml \
	$(LOCAL_PATH)/configs/permissions/qcnvitems.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qcnvitems.xml \
	$(LOCAL_PATH)/configs/permissions/rcsimssettings.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/rcsimssettings.xml \
	$(LOCAL_PATH)/configs/permissions/qti_libpermissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/qti_libpermissions.xml \
	$(LOCAL_PATH)/configs/permissions/qti-vzw-ims-internal.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qti-vzw-ims-internal.xml \
	$(LOCAL_PATH)/configs/permissions/rcsservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/rcsservice.xml
#	$(LOCAL_PATH)/configs/permissions/privapp-permissions-wfcactivation.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-wfcactivation.xml
#	$(LOCAL_PATH)/configs/permissions/QtiTelephonyService.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/QtiTelephonyService.xml \
#	$(LOCAL_PATH)/configs/permissions/cneapiclient.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/cneapiclient.xml \
#	frameworks/native/data/etc/android.hardware.telephony.mbms.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.mbms.xml \
#	$(LOCAL_PATH)/configs/permissions/com.quicinc.cne.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.quicinc.cne.xml \
#	$(LOCAL_PATH)/configs/permissions/com.verizon.embms.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.verizon.embms.xml \
	#	$(LOCAL_PATH)/configs/permissions/privapp-permissions-hima.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-hima.xml \
	#	$(LOCAL_PATH)/configs/permissions/com.android.vzwomatrigger.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.vzwomatrigger.xml \
	#	$(LOCAL_PATH)/configs/permissions/com.android.omadm.service.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.omadm.service.xml \
#	$(LOCAL_PATH)/configs/permissions/obdm_permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/obdm_permissions.xml \
#	frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.euicc.xml \
#	$(LOCAL_PATH)/configs/permissions/vzw_mvs_permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/vzw_mvs_permissions.xml \
#	$(LOCAL_PATH)/configs/permissions/privapp-permissions-ConnMO.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-ConnMO.xml \
#	$(LOCAL_PATH)/configs/permissions/privapp-permissions-DCMO.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-DCMO.xml \
# $(LOCAL_PATH)/configs/permissions/com.verizon.hardware.telephony.ehrpd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.verizon.hardware.telephony.ehrpd.xml \
# $(LOCAL_PATH)/configs/permissions/com.verizon.hardware.telephony.lte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.verizon.hardware.telephony.lte.xml \
# $(LOCAL_PATH)/configs/permissions/com.verizon.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.verizon.ims.xml \
#	$(LOCAL_PATH)/configs/permissions/imscm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/imscm.xml \
#	$(LOCAL_PATH)/configs/permissions/qti_permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qti_permissions.xml \
#	$(LOCAL_PATH)/configs/permissions/embms_permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/embms_permissions.xml \
	# $(LOCAL_PATH)/configs/permissions/izat.xt.srv.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/izat.xt.srv.xml \
# $(LOCAL_PATH)/configs/permissions/com.qti.location.sdk.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.qti.location.sdk.xml \
# $(LOCAL_PATH)/configs/permissions/rcs_service_aidl.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/rcs_service_aidl.xml \
# $(LOCAL_PATH)/configs/permissions/rcs_service_api.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/rcs_service_api.xml \
# $(LOCAL_PATH)/configs/permissions/QtiTelephonyService.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/QtiTelephonyService.xml \
# $(LOCAL_PATH)/configs/permissions/qti_libpermissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/qti_libpermissions.xml \
 # $(LOCAL_PATH)/configs/permissions/privapp-com.qualcomm.location.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-com.qualcomm.location.xml\
 #$(LOCAL_PATH)/configs/permissions/com.qualcomm.location.vzw_library.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.qualcomm.location.vzw_library.xml
 #	$(LOCAL_PATH)/configs/permissions/org.codeaurora.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/org.codeaurora.ims.xml \
# $(LOCAL_PATH)/configs/permissions/privapp-permissions-WfcActivation.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-WfcActivation.xml
 #   frameworks/native/data/etc/android.hardware.telephony.carrierlock.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.carrierlock.xml \

# Additional native libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

#PRODUCT_COPY_FILES += \
#	vendor/htc/hima/proprietary/vendor/qti_permissions.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/qti_permissions.xml

# APEX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ld.config.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/swcodec/ld.config.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-lineage-hima.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lineage-hima.xml
    

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@6.0-impl \
    audio.a2dp.default \
    audio.primary.msm8994 \
    audio.r_submix.default \
    audio.usb.default \
    audio_amplifier.msm8994 \
    audio_policy.msm8994 \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_i2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_i2s.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_i2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_i2s.xml \
    $(LOCAL_PATH)/configs/audio/aanc_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/aanc_tuning_mixer.txt

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-hima \
    libshim_camera_hima \
    libshim_chromaflash \
    libshim_stillmore \
    Snap \
    cameraserver_hima

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hdrhax:$(TARGET_COPY_OUT_VENDOR)/etc/hdrhax

# Consumer IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl
    
# Codeaurora    
PRODUCT_PACKAGES += \
	ims-ext-common \
	ims-ext-common_system \
	ims_ext_common.xml \
	libshims_ims \
    #libshims_boringssl
#	qti-telephony-hidl-wrapper \
#	qti_telephony_hidl_wrapper.xml \
#	qti-telephony-utils \
#	qti_telephony_utils.xml \
#	telephony-ext
#Codeaurora   
PRODUCT_BOOT_JARS += \
	ims-ext-common_system
# codeaurora telephony-ext
PRODUCT_PACKAGES += \
	telephony-ext
PRODUCT_BOOT_JARS += \
	telephony-ext
	
PRODUCT_PACKAGES += \
	qti-telephony-hidl-wrapper \
	qti_telephony_hidl_wrapper.xml \
	qti-telephony-utils \
	qti_telephony_utils.xml \
	telephony-ext

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.msm8994 \
    gralloc.msm8994 \
    hwcomposer.msm8994 \
    memtrack.msm8994 \
    libtinyxml

# Dot View Case
PRODUCT_PACKAGES += \
    FlipFlap

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey \
    android.hidl.base@1.0 \
    libshim_drm
    
#embms
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/verizon_config_params.txt:$(TARGET_COPY_OUT_VENDOR)/app/embms/qcom/verizon_config_params.txt \
	$(LOCAL_PATH)/configs/embms/config_params.xml:$(TARGET_COPY_OUT_VENDOR)/app/embms/qcom/config_params.xml \
	$(LOCAL_PATH)/configs/embms/provisioning_params.xml:$(TARGET_COPY_OUT_VENDOR)/app/embms/qcom/provisioning_params.xml
 
 
# copy file needed for codeaurora and vzwapnparser to stay awake during powersave mode: to sysconfig
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/sysconfig/orgcodeauroraimsdoze.xml:$(TARGET_COPY_OUT_ETC)/sysconfig/orgcodeauroraimsdoze.xml \
	$(LOCAL_PATH)/configs/sysconfig/comvzwapnservice.xml:$(TARGET_COPY_OUT_ETC)/sysconfig/comvzwapnservice.xml
# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Gesture Handler
PRODUCT_PACKAGES += \
    GestureHandler

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.legacy \
    android.hardware.gnss@1.0-service.legacy \
    libshim_gps_hima \
    gps.msm8994 \
    flp.conf \
    gps.conf \
    izat.conf \
    sap.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps_debug.conf

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder \
    hwservicemanager
    
# HTC Logging functions
PRODUCT_PACKAGES += \
    liblog_htc
    	
# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom_first_stage \
    init.qcom.rc \
    init.qcom.power.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    init.qcom.firmware_links.sh

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/max1187x_touchscreen_0.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/max1187x_touchscreen_0.idc \
    $(LOCAL_PATH)/idc/projector_input.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/synaptics_dsx.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/synaptics_dsx.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl

# IPACM
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0-java

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config
    
PRODUCT_PACKAGES += \
	embmslibrary \
	imscmlibrary \
	qcrilhook \
	qti-vzw-ims-internal \
	QtiTelephonyServicelibrary \
	rcsimssettings \
	rcsservice
PRODUCT_JARS += \
	embmslibrary \
	imscmlibrary \
	qcrilhook \
	qti-vzw-ims-internal \
	QtiTelephonyServicelibrary \
	rcsimssettings \
	rcsservice
   
# JamesDSPManager
#PRODUCT_PACKAGES += \
 #   JamesDSPManager

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    keystore.msm8994

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.hima

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sysfs

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-service \
    android.hardware.nfc@1.0-impl-hima \
    com.android.nfc_extras \
    NfcNci \
    SecureElement \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:$(TARGET_COPY_OUT_VENDOR)/etc/nfcee_access.xml \
    $(LOCAL_PATH)/prebuilts/nfc/lib/nfc_nci.msm8994.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/nfc_nci.msm8994.so \
    $(LOCAL_PATH)/prebuilts/nfc/lib64/nfc_nci.msm8994.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/nfc_nci.msm8994.so

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    power.qcom

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# QMI
PRODUCT_PACKAGES += \
    dsi_config.xml \
    netmgr_config.xml \
    qmi_config.xml

# Renderscript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libshim_ril \
	rild_socket
	
# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service \
    thermal.qcom

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Legacy Encryption
PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libwifi-hal-bcm \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

#PRODUCT_COPY_FILES += \
#$(LOCAL_PATH)/qcril_database/upgrade/1_version_intro.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/1_version_intro.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/2_db_upgrade.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/2_db_upgrade.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/3_remove_ecc_999_from_us_and_canada.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/3_remove_ecc_999_from_us_and_canada.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/4_db_upgrade.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/4_db_upgrade.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/5_update_india_ecc.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/5_update_india_ecc.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/6_recheck_ecc_setting.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/6_recheck_ecc_setting.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/7_singapore_ecc_995.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/7_singapore_ecc_995.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/8_germany_ecc_110.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/8_germany_ecc_110.sql \
#$(LOCAL_PATH)/qcril_database/upgrade/9_remove_germany_ecc_110.sql:$(TARGET_OUT_VENDOR)/qcril_database/upgrade/9_remove_germany_ecc_110.sql \
