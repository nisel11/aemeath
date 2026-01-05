kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/baloo.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kfilemetadata.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kservice.bst
- components/kf6/kwidgetsaddons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/baloo-widgets-%{gear-version}.tar.xz'
  ref: 8edf855fb9347bed348c8be2bafc01d18380a7887a25abe2e716c0a11d9a6f83
