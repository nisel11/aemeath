kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DEIGEN_BUILD_BLAS=OFF
    -DEIGEN_BUILD_LAPACK=OFF

sources:
- kind: git_repo
  url: gitlab:libeigen/eigen
  track: '*.*.*'
  ref: 5.0.1-0-gbc3b39870ecb690a623a3f49149a358b95c5781d
