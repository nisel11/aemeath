kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtpositioning.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlocation-everywhere-src-%{qt6-version}.tar.xz'
  ref: d313f05dedc593517c47d0fa3eb131a2597c01db23de263fe89fea561be50f3c
