LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/include \
    system/media/camera/include

#LOCAL_CFLAGS := -DLOG_PARAMETERS

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_STATIC_LIBRARIES := libbase libarect
LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client_htc libutils libgui \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0

LOCAL_HEADER_LIBRARIES := libnativebase_headers

LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
# LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
