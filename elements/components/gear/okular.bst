kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libtiff.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtspeech.bst
- components/qt6/qtsvg.bst
- components/kf6/karchive.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/threadweaver.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/kwallet.bst
- components/kf6/kparts.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcrash.bst
- components/kf6/kiconthemes.bst
- components/kf6/ktextwidgets.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/purpose.bst
- components/freedesktop/poppler.bst
- components/gear/libkexiv2.bst
- components/deps/qt6-phonon.bst
# TODO: libspectre, djvulibre, epub, qmobipocket, discount

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/okular-%{gear-version}.tar.xz'
  ref: 989044c64489f0349584e54a3df212984ea3b8b130b8e2df7a285dfa4b16e6eb
