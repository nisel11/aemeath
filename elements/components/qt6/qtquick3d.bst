kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtshadertools.bst
- components/qt6/qtquicktimeline.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquick3d-everywhere-src-%{qt6-version}.tar.xz'
  ref: b95439f31d1e580c379e9828b48b03b932b0bdade4ff09f4dd639eff9da2cd75
