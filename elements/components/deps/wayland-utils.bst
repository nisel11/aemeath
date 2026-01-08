kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/libdrm.bst

sources:
- kind: git_repo
  url: freedesktop:wayland/wayland-utils.git
  track: 1.3.0
  ref: d01edd68961ca01779dcb96afe56c2d99ff79067
