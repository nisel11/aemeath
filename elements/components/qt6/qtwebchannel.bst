kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebchannel-everywhere-src-%{qt6-version}.tar.xz'
  ref: 7ba16925f230e60f58efce02c1ce214bcb6b0740e24f5dd40c06f40f37d93111
