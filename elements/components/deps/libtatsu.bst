kind: autotools

sources:
- kind: tar
  url: github:libimobiledevice/libtatsu/releases/download/1.0.5/libtatsu-1.0.5.tar.bz2
  ref: 536fa228b14f156258e801a7f4d25a3a9dd91bb936bf6344e23171403c57e440

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/curl.bst
- components/deps/libplist.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl
