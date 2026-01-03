kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/frameworkintegration.git'
  track: 'v%{kf6-version}'
  ref: 09996fcb95d796d26e552fefd6a9e82fd2c2a610
