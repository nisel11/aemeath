kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/deps/libraw.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_WITH_QT6=ON

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/libkdcraw-%{gear-version}.tar.xz'
  ref: fc4a7461265a876680111b6be1d9147eb62971e9737078f757c0e6992c7c4857
