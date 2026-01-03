kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlanguageserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: 3360526b4f4d556673b31e29a49e15d02da52d5eaa53b0204d56a0ba160a556c
