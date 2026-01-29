kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebsockets-everywhere-src-%{qt6-version}.tar.xz'
  ref: eccc751bea509ef656d20029693987a0fc03c58e21c38f1351480f3c8eb42ebd
