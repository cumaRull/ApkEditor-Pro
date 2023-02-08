# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH :=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := syscheck
#LOCAL_MODULE    := ab
LOCAL_SRC_FILES := util.c syscheck.c entry.c merge.c modzip.c data.c protect.c protect_str.c png_utils.c\
	libzip/mkstemp.c \
	libzip/zip_add.c \
	libzip/zip_add_dir.c \
	libzip/zip_add_entry.c \
	libzip/zip_buffer.c \
	libzip/zip_close.c \
	libzip/zip_delete.c \
	libzip/zip_dir_add.c \
	libzip/zip_dirent.c \
	libzip/zip_discard.c \
	libzip/zip_entry.c \
	libzip/zip_err_str.c \
	libzip/zip_error.c \
	libzip/zip_error_clear.c \
	libzip/zip_error_get.c \
	libzip/zip_error_get_sys_type.c \
	libzip/zip_error_strerror.c \
	libzip/zip_error_to_str.c \
	libzip/zip_extra_field.c \
	libzip/zip_extra_field_api.c \
	libzip/zip_fclose.c \
	libzip/zip_fdopen.c \
	libzip/zip_file_add.c \
	libzip/zip_file_error_clear.c \
	libzip/zip_file_error_get.c \
	libzip/zip_file_get_comment.c \
	libzip/zip_file_get_external_attributes.c \
	libzip/zip_file_get_offset.c \
	libzip/zip_file_rename.c \
	libzip/zip_file_replace.c \
	libzip/zip_file_set_comment.c \
	libzip/zip_file_set_external_attributes.c \
	libzip/zip_file_set_mtime.c \
	libzip/zip_file_strerror.c \
	libzip/zip_filerange_crc.c \
	libzip/zip_fopen.c \
	libzip/zip_fopen_encrypted.c \
	libzip/zip_fopen_index.c \
	libzip/zip_fopen_index_encrypted.c \
	libzip/zip_fread.c \
	libzip/zip_get_archive_comment.c \
	libzip/zip_get_archive_flag.c \
	libzip/zip_get_encryption_implementation.c \
	libzip/zip_get_file_comment.c \
	libzip/zip_get_name.c \
	libzip/zip_get_num_entries.c \
	libzip/zip_get_num_files.c \
	libzip/zip_hash.c \
	libzip/zip_io_util.c \
	libzip/zip_memdup.c \
	libzip/zip_name_locate.c \
	libzip/zip_new.c \
	libzip/zip_open.c \
	libzip/zip_rename.c \
	libzip/zip_replace.c \
	libzip/zip_set_archive_comment.c \
	libzip/zip_set_archive_flag.c \
	libzip/zip_set_default_password.c \
	libzip/zip_set_file_comment.c \
	libzip/zip_set_file_compression.c \
	libzip/zip_set_name.c \
	libzip/zip_source_begin_write.c \
	libzip/zip_source_buffer.c \
	libzip/zip_source_call.c \
	libzip/zip_source_close.c \
	libzip/zip_source_commit_write.c \
	libzip/zip_source_crc.c \
	libzip/zip_source_error.c \
	libzip/zip_source_file.c \
	libzip/zip_source_filep.c \
	libzip/zip_source_free.c \
	libzip/zip_source_function.c \
	libzip/zip_source_is_deleted.c \
	libzip/zip_source_layered.c \
	libzip/zip_source_open.c \
	libzip/zip_source_pkware.c \
	libzip/zip_source_read.c \
	libzip/zip_source_remove.c \
	libzip/zip_source_rollback_write.c \
	libzip/zip_source_seek.c \
	libzip/zip_source_seek_write.c \
	libzip/zip_source_stat.c \
	libzip/zip_source_supports.c \
	libzip/zip_source_tell.c \
	libzip/zip_source_tell_write.c \
	libzip/zip_source_window.c \
	libzip/zip_source_write.c \
	libzip/zip_source_zip.c \
	libzip/zip_source_zip_new.c \
	libzip/zip_stat.c \
	libzip/zip_stat_index.c \
	libzip/zip_stat_init.c \
	libzip/zip_strerror.c \
	libzip/zip_string.c \
	libzip/zip_unchange.c \
	libzip/zip_unchange_all.c \
	libzip/zip_unchange_archive.c \
	libzip/zip_unchange_data.c \
	libzip/zip_utf-8.c \
       libzip/zip_progress.c \
       libzip/zip_source_compress.c \
       libzip/zip_source_get_compression_flags.c \
       libzip/zip_algorithm_deflate.c \
       libzip/zip_random_unix.c \


# Debug version
#LOCAL_CFLAGS := -DHAVE_CONFIG_H -I./apkeditor/libzip -fvisibility=hidden

# Release version (For APK Editor Pro, check all)
LOCAL_CFLAGS := -DRELEASE -DCHECK_FILESIZE -DCHECK_SIGNATURE -DHAVE_CONFIG_H -I./libzip -fvisibility=hidden

# Release version (For APK Parser)
#LOCAL_CFLAGS := -DRELEASE -DCHECK_FILESIZE -DHAVE_CONFIG_H -I./apkeditor/libzip -fvisibility=hidden

# Release version (For APK Builder, do not check it at all)
#LOCAL_CFLAGS := -DRELEASE -DAPK_BUILDER -DHAVE_CONFIG_H -I./apkeditor/libzip -fvisibility=hidden


LOCAL_LDLIBS := -llog -lz

include $(BUILD_SHARED_LIBRARY)
