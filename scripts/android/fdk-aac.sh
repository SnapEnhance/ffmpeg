#!/bin/bash

#--enable-custom-library-1-name=fdk-aac \
#--enable-custom-library-1-repo="https://github.com/mstorsjo/fdk-aac" \
#--enable-custom-library-1-repo-commit=v2.0.3 \
#--enable-custom-library-1-package-config-file-name=fdk-aac \
#--enable-custom-library-1-ffmpeg-enable-flag=fdk-aac \
#--enable-custom-library-1-license-file=LICENSE-fdk-aac \
#--enable-custom-library-1-uses-cpp

##FIXME: This script is not complete and not working.

mkdir -p "${BUILD_DIR}" || return 1
cd "${BUILD_DIR}" || return 1

# ALWAYS CLEAN THE PREVIOUS BUILD
make distclean 2>/dev/null 1>/dev/null

# REGENERATE BUILD FILES IF NECESSARY OR REQUESTED
if [[ ! -f "${BASEDIR}"/src/"${LIB_NAME}"/configure ]] || [[ ${RECONF_libiconv} -eq 1 ]]; then
  ./autogen.sh || return 1
fi

./configure \
    --prefix="${LIB_INSTALL_PREFIX}"  \
    --enable-static \
    --sysroot="${ANDROID_SYSROOT}" \

make -j$(get_cpu_count) || return 1

make install || return 1

# MANUALLY COPY PKG-CONFIG FILES
cp fdk-aac.pc "${INSTALL_PKG_CONFIG_DIR}" || return 1