kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.403-0-gbb56be59220b34d79160b73bd24eb36952dc8c63
variables:
  conf-args: >-
    --prefix="%{prefix}"

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
