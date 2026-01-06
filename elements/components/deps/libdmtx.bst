kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:dmtx/libdmtx.git
  track: v*
  ref: 500d7af6106713610a0f8b2d96aefa81912b96bc
