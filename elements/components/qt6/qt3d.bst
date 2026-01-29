kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/shaderc.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qt3d-everywhere-src-%{qt6-version}.tar.xz'
  ref: febbca9d491feca0fa2d770e912590b4ef18e461f739ca6e855ea62a488bbb6d
