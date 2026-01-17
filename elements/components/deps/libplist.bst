kind: autotools

sources:
- kind: tar
  url: github:libimobiledevice/libplist/releases/download/2.7.0/libplist-2.7.0.tar.bz2
  ref: 7ac42301e896b1ebe3c654634780c82baa7cb70df8554e683ff89f7c2643eb8b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --without-cython

public:
  cpe:
    vendor: 'libimobiledevice'
    product: 'libplist'
