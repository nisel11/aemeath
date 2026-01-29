kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/hunspell.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtmultimedia.bst
- components/qt6/qtsvg.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtvirtualkeyboard-everywhere-src-%{qt6-version}.tar.xz'
  ref: 6273256091a83f3f283d1a91498964fd6a91256b667d7b9e98005d731fdb986b
