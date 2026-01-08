kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- components/deps/eigen.bst
- components/deps/openblas.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst

variables:
  cmake-local: >-
    -DOPENCV_EXTRA_MODULES_PATH=contrib/modules
    -DWITH_QT=ON
    -DWITH_VULKAN=ON
    -DVULKAN_INCLUDE_DIR=/usr/include
    -DWITH_OPENGL=ON
    -DWITH_EIGEN=ON
    -DWITH_OPENBLAS=ON
    -DWITH_IPP=OFF
    -DWITH_ADE=OFF
    -DBUILD_opencv_wechat_qrcode=OFF
    -DBUILD_opencv_xfeatures2d=OFF
    -DBUILD_opencv_face=OFF
    -DBUILD_opencv_python3=OFF
    -DBUILD_opencv_java=OFF
    -DWITH_GTK=OFF
    -DBUILD_TESTS=OFF
    -DBUILD_PERF_TESTS=OFF
    -DBUILD_EXAMPLES=OFF
    -DCMAKE_CXX_STANDARD=17

sources:
- kind: tar
  url: github:opencv/opencv/archive/refs/tags/4.13.0.tar.gz
  ref: 1d40ca017ea51c533cf9fd5cbde5b5fe7ae248291ddf2af99d4c17cf8e13017d
- kind: tar
  directory: contrib
  url: github:opencv/opencv_contrib/archive/refs/tags/4.13.0.tar.gz
  ref: 1e0077a4fd2960a7d2f4c9e49d6ba7bb891cac2d1be36d7e8e47aa97a9d1039b
