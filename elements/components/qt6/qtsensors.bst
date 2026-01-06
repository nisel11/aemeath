kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/iio-sensor-proxy.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtsensors-everywhere-src-%{qt6-version}.tar.xz'
  ref: 49ce9ce033234689706dfcacef4eac7e562cff127cacc889ffcb3b68d684b395
