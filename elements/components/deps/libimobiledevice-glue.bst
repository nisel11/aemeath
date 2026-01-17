kind: autotools

sources:
- kind: tar
  url: github:libimobiledevice/libimobiledevice-glue/releases/download/1.3.2/libimobiledevice-glue-1.3.2.tar.bz2
  ref: 6489a3411b874ecd81c87815d863603f518b264a976319725e0ed59935546774

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/libplist.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl
