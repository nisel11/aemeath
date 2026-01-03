kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/ki18n.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knewstuff.bst
- components/kf6/kpackage.bst
- components/kf6/kquickcharts.bst
- components/kf6/kservice.bst
- components/kf6/solid.bst
- freedesktop-sdk.bst:components/libnl.bst
- components/deps/libpcap.bst
- components/deps/lm-sensors.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:plasma/libksysguard.git'
  track: 'v%{plasma-version}'
  ref: bdce163d61413bcdd48ecc654196cc04678035d4
