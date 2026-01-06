kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/ki18n.bst
- components/kf6/solid.bst
- components/deps/qt6-phonon.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/libkcompactdisc-%{gear-version}.tar.xz'
  ref: d74e7e043e17cbd93bb5d5fe35ace36ffa496e20593d972fae9310a7bf977561
