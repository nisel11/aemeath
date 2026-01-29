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
  ref: 91e6515b7cebbfae3696861933f5359cc303dfe82f7849cf5a10df378c8ef581
