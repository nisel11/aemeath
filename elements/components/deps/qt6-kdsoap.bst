kind: cmake

sources:
- kind: tar
  url: github:KDAB/KDSoap/releases/download/kdsoap-2.2.0/kdsoap-2.2.0.tar.gz
  ref: d9ef11948442197c9fa44bd6fbadc842b7280a60dfc40577af66fded637af356

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DKDSoap_QT6=true

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
