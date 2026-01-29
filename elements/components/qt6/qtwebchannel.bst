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
  ref: e31ea59f8e19e0374d54fdc7a8479c840acffc4ba5297ee43564b5158a4f2c27
