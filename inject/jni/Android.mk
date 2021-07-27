LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_LDLIBS += -L$(SYSROOT)/usr/include/arm-linux-androideabi -llog -lEGL
#LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog -lEGL
#LOCAL_ARM_MODE := arm
LOCAL_MODULE    := inject
LOCAL_SRC_FILES := ../inject.c

#LOCAL_CFLAGS += -pie -fPIE
#LOCAL_LDFLAGS += -pie -fPIE

ifeq (${ANDROID_ABI},armeabi-v7a)
     include_directories(${ANDROID_SYSROOT}/usr/include/arm-linux-androideabi)
endif

ifeq (${ANDROID_ABI},arm64-v8a)
	include_directories(${ANDROID_SYSROOT}/usr/include/aarch64-linux-android)
endif

include $(BUILD_EXECUTABLE)
