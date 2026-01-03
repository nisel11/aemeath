kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtsvg.bst
sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwayland-everywhere-src-%{qt6-version}.tar.xz'
  ref: 49bf6db800227a6b2c971f4c5d03dd1e81297e7ffb296ce4a96437304f27cb13
