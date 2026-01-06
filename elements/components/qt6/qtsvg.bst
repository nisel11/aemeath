kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtsvg-everywhere-src-%{qt6-version}.tar.xz'
  ref: c02f355a58f3bbcf404a628bf488b6aeb2d84a94c269afdb86f6e529343ab01f
