kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtimageformats-everywhere-src-%{qt6-version}.tar.xz'
  ref: c02f355a58f3bbcf404a628bf488b6aeb2d84a94c269afdb86f6e529343ab01f
