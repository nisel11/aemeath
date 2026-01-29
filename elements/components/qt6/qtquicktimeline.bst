kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquicktimeline-everywhere-src-%{qt6-version}.tar.xz'
  ref: 7032d8b758d21fdf790dde0d070e1c82819abcf5ee7194dbf21589dbdfd36324
