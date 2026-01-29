kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtnetworkauth-everywhere-src-%{qt6-version}.tar.xz'
  ref: 4f29fd9e4b505f5714fc42296b04c701f66ced185c49de4d520cb8de4b1981b3
