kind: autotools

sources:
- kind: git_repo
  url: https://git.yoctoproject.org/libfakekey.git
  track: 0.*

  ref: 7ad885912efb2131e80914e964d5e635b0d07b40
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
