kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kiconthemes.bst
- components/kf6/kirigami.bst
- components/kf6/sonnet.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/qqc2-desktop-style.git'
  track: 'v%{kf6-version}'
  ref: 48349f0bcd8ed56bcb9049c584330ac79ce09ca1
