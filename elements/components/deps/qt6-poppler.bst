kind: filter

build-depends:
- components/staging/poppler.bst

runtime-depends:
- freedesktop-sdk.bst:components/poppler.bst

config:
  include:
  - qt6-poppler
  include-orphans: false
