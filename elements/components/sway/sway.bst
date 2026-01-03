kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/sway/wlroots.bst
- freedesktop-sdk.bst:components/json-c.bst
sources:
- kind: tar
  url: github:swaywm/sway/releases/download/1.11/sway-1.11.tar.gz
  ref: 0e37a55b7c3379230e97e1ad982542b75016a0c7d6676198604e557f9b373dae
