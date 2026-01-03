kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- aemeath/platform.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:components/libseat.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/hwdata.bst
- freedesktop-sdk.bst:components/libdisplay-info.bst
- components/sway/libliftoff.bst

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/wlroots/wlroots/-/releases/0.19.2/downloads/wlroots-0.19.2.tar.gz
  ref: 09a0a8d60104c8b0772fee4f60ba76a89aed7e59dff7659d00960fba06bdf267
