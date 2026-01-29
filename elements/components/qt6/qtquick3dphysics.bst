kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtshadertools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquick3dphysics-everywhere-src-%{qt6-version}.tar.xz'
  ref: b7aff67bd05794351d7c19b178c54b674afc3ea2b4632df892aaee98f12c1cdb
