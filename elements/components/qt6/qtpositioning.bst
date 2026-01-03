kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtpositioning-everywhere-src-%{qt6-version}.tar.xz'
  ref: abb311ef1bd6e39f090d22480e265d13f8537d2e2f4c88f22d6519547f46be23
