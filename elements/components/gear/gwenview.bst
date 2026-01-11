kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/lcms.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/qt6/qtsvg.bst
- components/qt6/qtimageformats.bst
- components/qt6/qtwayland.bst
- components/kf6/kio.bst
- components/kf6/kitemmodels.bst
- components/kf6/ki18n.bst
- components/kf6/kparts.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kiconthemes.bst
- components/kf6/knotifications.bst
- components/kf6/kguiaddons.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kcoreaddons.bst
- components/kf6/baloo.bst
- components/kf6/purpose.bst
- components/plasma/plasma-activities.bst
- components/deps/exiv2.bst
- components/deps/cfitsio.bst
- components/deps/kimageannotator.bst
- components/gear/libkdcraw.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/gwenview-%{gear-version}.tar.xz'
  ref: 6aff9fdffdb3bc32dd783871c480b53d4fbc911ba83d5aa414b91c22b69392fc
