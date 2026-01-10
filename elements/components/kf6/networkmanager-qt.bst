kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- freedesktop-sdk.bst:components/networkmanager.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/networkmanager-qt.git'
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-gb3d506192606ba7e98935c43f7717d1f09002bca
