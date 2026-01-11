kind: cmake

sources:
- kind: git_repo
  url: github:HEASARC/cfitsio.git
  track: cfitsio-*
  ref: cfitsio-4.6.3-0-g386e719ccc5e30ca497ec2df57c4ef1de5adbc3f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
