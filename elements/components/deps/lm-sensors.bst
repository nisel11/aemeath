kind: make

sources:
- kind: git_repo
  url: github:github.com/lm-sensors/lm-sensors.git
  track: 'V*'
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- aemeath/minimal.bst
