kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- freedesktop-sdk.bst:components/cmake.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/extra-cmake-modules.git'
  track: 'v%{kf6-version}'
  ref: f8447eb308c27724be2bcd3a0e8c2f4bd5d9f52f
