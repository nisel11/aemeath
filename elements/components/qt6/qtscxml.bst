kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtscxml-everywhere-src-%{qt6-version}.tar.xz'
  ref: 0f9c178db3f1b1b06d20172aaaa4d7f5513bcb99de01f880c29e23b5ffdd236a
