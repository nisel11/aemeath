kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/deps/speech-dispatcher.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtspeech-everywhere-src-%{qt6-version}.tar.xz'
  ref: d937f6c715792b0d8f036e94513ebfc8def6b988a65f3ff30a7f4a8cc1263014
