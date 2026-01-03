kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6-deps/libutempter.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kpty.git'
  track: 'v%{kf6-version}'
  ref: bdce163d61413bcdd48ecc654196cc04678035d4
