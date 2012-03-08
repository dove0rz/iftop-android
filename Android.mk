LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS:=-O2 -g -DHAVE_CONFIG_H 
LOCAL_C_INCLUDES += \
	external/libpcap \
	external/libncurses/include

LOCAL_MODULE:= iftop
LOCAL_MODULE_TAGS:= eng
#LOCAL_SYSTEM_SHARED_LIBRARIES := libc
LOCAL_LDLIBS += -lpthread -ldl -lm
LOCAL_SHARED_LIBRARIES := libncurses
LOCAL_STATIC_LIBRARIES += libpcap
#LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
	addr_hash.c \
	addrs_dlpi.c \
	addrs_ioctl.c \
	cfgfile.c \
	dlcommon.c \
	edline.c \
	hash.c \
	if_nameindex.c \
	iftop.c \
	ns_hash.c \
	options.c \
	resolver.c \
	screenfilter.c \
	serv_hash.c \
	sorted_list.c \
	stringmap.c \
	threadprof.c \
	ui.c \
	util.c \
	vector.c

include $(BUILD_EXECUTABLE)


