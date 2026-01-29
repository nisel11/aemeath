kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst
- components/qt6/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquickeffectmaker-everywhere-src-%{qt6-version}.tar.xz'
  ref: e3caf13b4e0c0d9e6d696192137615e8e748d7999272c74472945067f469c2c4
