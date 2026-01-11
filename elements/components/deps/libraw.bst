kind: autotools

sources:
- kind: git_repo
  url: github:LibRaw/LibRaw.git
  track: '*.*.*'
  exclude:
  - '*b'
  ref: 0.21.5-0-ge8b172e2197c3d45b35ffa992f6cfd9c49fdc100

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/lcms.bst

variables:
  conf-local: >-
    --disable-examples
