kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/grpc.bst
- freedesktop-sdk.bst:components/protobuf.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtgrpc-everywhere-src-%{qt6-version}.tar.xz'
  ref: 7386bfc9c10c7920e5ff22dcf067e95f379bb379e4d916269f4465ab295ed136
