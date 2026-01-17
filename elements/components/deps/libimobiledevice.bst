kind: autotools

sources:
- kind: tar
  url: github:libimobiledevice/libimobiledevice/releases/download/1.4.0/libimobiledevice-1.4.0.tar.bz2
  ref: 23cc0077e221c7d991bd0eb02150a0d49199bcca1ddf059edccee9ffd914939d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/libusbmuxd.bst
- components/deps/libtatsu.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libgcrypt.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl
