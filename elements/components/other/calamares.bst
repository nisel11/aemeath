kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst
- components/qt6/qttranslations.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:components/parted.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtsvg.bst
- components/kf6/kcoreaddons.bst
- components/gear/kpmcore.bst
- components/deps/yaml-cpp.bst

variables:
  cmake-local: >-
    -DWITH_QT6=ON

sources:
- kind: git_repo
  url: codeberg:Calamares/calamares.git
  track: v*
  ref: v3.4.0-0-g78d4208a03b0abdfb68e94c9c08a28f37a473ee6
