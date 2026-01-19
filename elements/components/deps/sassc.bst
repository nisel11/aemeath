kind: autotools

sources:
- kind: git_repo
  url: github:sass/sassc.git
  track: "*.*"
  ref: 3.6.2-0-g66f0ef37e7f0ad3a65d2f481eff09d09408f42d0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- components/deps/libsass.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
