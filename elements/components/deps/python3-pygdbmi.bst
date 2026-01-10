kind: setuptools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:cs01/pygdbmi.git
  track: 'v*'
  ref: v0.11.0.0-0-g52a17f1d8651e941b8551a44a03d181d605e1e56
