kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtpositioning-everywhere-src-%{qt6-version}.tar.xz'
  ref: 7051fa64477c66769840cad396fc3772a01ba5516363c8842a7a513fa0c4cdce
