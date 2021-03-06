ifneq ($(filter mb886 moto_msm8960 moto_msm8960_jbbl vanquish xt897 xt897c xt901 xt907 xt925 xt926 xt925_jbbl,$(TARGET_DEVICE)),)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
     framework/native/include \
     system/media/camera/include 

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    liblog \
    libcamera_client \
    libgui \
    libhidltransport \
    libutils \
    android.hidl.token@1.0-utils


LOCAL_STATIC_LIBRARIES := \
    libarect

LOCAL_HEADER_LIBRARIES := libnativebase_headers

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_HEAPTRACKED_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := libbinder

LOCAL_SRC_FILES := \
    CompatSymbols.cpp

LOCAL_MODULE := libshim_cam
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
endif
