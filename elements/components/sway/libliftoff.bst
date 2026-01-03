kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- aemeath/platform.bst

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/emersion/libliftoff/-/releases/v0.5.0/downloads/libliftoff-0.5.0.tar.gz
  ref: e29af0c9dc765916c1f192f118efffc947af6600178b04d5bccca1901246f83b
