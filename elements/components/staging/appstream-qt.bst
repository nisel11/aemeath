kind: filter

build-depends:
- components/staging/appstream-base.bst

runtime-depends:
- freedesktop-sdk.bst:components/appstream.bst

config:
  include:
  - appstream-qt
  include-orphans: false
