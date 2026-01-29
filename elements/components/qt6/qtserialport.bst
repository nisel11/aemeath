kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtserialport-everywhere-src-%{qt6-version}.tar.xz'
  ref: b40cbf29da111ffa8fee7e7cb44b9097042782cd17a10448a83ff3156cdebd6b
