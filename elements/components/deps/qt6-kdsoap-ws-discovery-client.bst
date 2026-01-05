kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/kdsoap-ws-discovery-client.git
  track: 'v*'
  ref: cc51b4fc7401c9898d42b34cdf0d7abd90f4a447

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DQT_MAJOR_VERSION=6

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/deps/qt6-kdsoap.bst
