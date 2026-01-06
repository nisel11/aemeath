kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst

variables:
  cmake-local: |
    -DBUILD_TESTS=OFF \
    -DBUILD_WITH_QT6=ON \
    -DQCA_LIBRARY_INSTALL_DIR="%{prefix}/lib/x86_64-linux-gnu"

sources:
- kind: git_repo
  url: 'kde:libraries/qca.git'
  track: 'v*'
  ref: df5171e3c4baf346581f15af5a040e61b166a332
