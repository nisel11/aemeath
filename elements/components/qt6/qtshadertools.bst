kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtshadertools-everywhere-src-%{qt6-version}.tar.xz'
  ref: 18d9dbbc4f7e6e96e6ed89a9965dc032e2b58158b65156c035537826216716c9
