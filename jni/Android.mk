LOCAL_PATH := $(call my-dir)


# 引入freetype静态库 #
include $(CLEAR_VARS)
LOCAL_MODULE := lib_git_freetype
LOCAL_SRC_FILES := src/ImGui/misc/git_freetype/$(TARGET_ARCH_ABI)/libfreetype.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := imgVlukanTear.sh

LOCAL_CFLAGS := -std=c17
LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_CPPFLAGS := -std=c++20
LOCAL_CPPFLAGS += -fvisibility=hidden
LOCAL_CPPFLAGS += -fexceptions

LOCAL_CPPFLAGS += -DVK_USE_PLATFORM_ANDROID_KHR
LOCAL_CPPFLAGS += -DIMGUI_IMPL_VULKAN_NO_PROTOTYPES
LOCAL_CPPFLAGS += -DIMGUI_DISABLE_DEBUG_TOOLS #禁用imgui调试工具
LOCAL_CPPFLAGS += -DIMGUI_ENABLE_FREETYPE     #启用imgui的freetype支持

#引入头文件到全局#   
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/Tool
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/native_surface
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/Android_draw
#泪心王者支持库哦  必备的呢！
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/TearOtherSupportGlory
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/Android_Graphics
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/Android_my_imgui
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/Android_touch
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/My_Utils
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/My_font
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/backends
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/misc/freetype
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/ImGui/misc/git_freetype

#LOCAL_CFLAGS += -mllvm -sobf -mllvm -sub -mllvm -bcf 


FILE_LIST += $(wildcard $(LOCAL_PATH)/src/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/Android_draw/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/ImGui/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/ImGui/Android_Graphics/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/ImGui/Android_touch/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/ImGui/Android_my_imgui/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/ImGui/backends/*.c*)
FILE_LIST += $(wildcard $(LOCAL_PATH)/src/ImGui/misc/freetype/*.c*)

LOCAL_SRC_FILES += $(FILE_LIST:$(LOCAL_PATH)/%=%)


LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv3
LOCAL_LDLIBS += -lz #freetype需要
LOCAL_STATIC_LIBRARIES := lib_git_freetype

include $(BUILD_EXECUTABLE) #可执行文件
