kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_SHARED_LIBS=ON
    -DBUILD_WITH_QT6=true

sources:
- kind: git_repo
  url: github:ksnip/kColorPicker.git
  track: 'v*'
  ref: v0.3.1-0-g522e38b61e0786b97b2114c273a4551c869335be
