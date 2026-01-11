kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/deps/kcolorpicker.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_SHARED_LIBS=ON
    -DBUILD_WITH_QT6=true

sources:
- kind: git_repo
  url: github:ksnip/kImageAnnotator.git
  track: 'v*'
  ref: v0.7.2-0-gc481a8936946da6c81cd9042eca3d7aeed8d6982
