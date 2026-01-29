kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst
- components/qt6/qtshadertools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtmultimedia-everywhere-src-%{qt6-version}.tar.xz'
  ref: 93f7ef0106fbd731165a2723f3e436c911fc5e6880f5bc987b55516c20833e2b
