kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:jbeder/yaml-cpp
  track: yaml-cpp-*
  ref: yaml-cpp-0.9.0-0-g56e3bb550c91fd7005566f19c079cb7a503223cf
