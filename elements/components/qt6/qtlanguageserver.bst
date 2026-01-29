kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlanguageserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: 9a043f2c84b0b470065fc7a954dc4ff0388db3e1b2c457c3d69670baecc40d53
