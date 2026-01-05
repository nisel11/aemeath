kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/kf6/breeze-icons.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kfilemetadata.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kjobwidgets.bst
- components/kf6/kparts.bst
- components/kf6/kpty.bst
- components/kf6/kservice.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/ark-%{gear-version}.tar.xz'
  ref: a1107e01049f345782c20b2abae3171ecb6e963bb02ffbb814e0357b024bb5c0
