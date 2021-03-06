LOCAL_PATH := $(call my-dir)

LOCAL_MODULE := dragonbones_cocos2dx2_static

LOCAL_MODULE_FILENAME := libdragonbones-cocos2dx2

LOCAL_SRC_FILES := \
	CCDragonBones.cpp \
	Cocos2dxAtlasNode.cpp \
	Cocos2dxDisplayBridge.cpp \
	Cocos2dxFactory.cpp \
	Cocos2dxTextureAtlas.cpp \

# TODO(hejiangzhou): Shall we disable exception?
LOCAL_CPPFLAGS := -fexceptions -std=c++11

LOCAL_EXPORT_CPPFLAGS := -fexceptions -std=c++11

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_WHOLE_STATIC_LIBRARIES := \
	cocos2dx_static \
	dragonbones_static \

NDK_TOOLCHAIN_VERSION := 4.8

include $(BUILD_STATIC_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,dragonbones)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)

