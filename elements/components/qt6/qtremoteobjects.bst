kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtremoteobjects-everywhere-src-%{qt6-version}.tar.xz'
  ref: bc683f044fe74dcf06c2b47f31fff2d967b5ac81896620108697dcc942eb65cd
