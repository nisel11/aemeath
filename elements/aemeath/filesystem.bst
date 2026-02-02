kind: compose

build-depends:
- aemeath/deps.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  - shells
  include-orphans: True
