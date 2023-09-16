LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PACKAGE_NAME := ConfigPanel
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_REQUIRED_MODULES := ZukPocketMode
LOCAL_PRODUCT_MODULE := true

LOCAL_USE_AAPT2 := true

LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.core_core \
    com.libremobileos.settings.resources

LOCAL_STATIC_JAVA_LIBRARIES := \
    VendorSupport-preference

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res \
    $(TOP)/packages/resources/devicesettings/res

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_MODULE_TAGS := optional

include $(BUILD_PACKAGE)
