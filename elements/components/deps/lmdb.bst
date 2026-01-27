kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: prefix="%{prefix}" libdir="%{libdir}" -C libraries/liblmdb

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libcanberra-gtk3.so'
        - '%{libdir}/libcanberra.so'

sources:
- kind: git_repo
  url: openldap:openldap/openldap.git
  track: LMDB_*
  ref: LMDB_0.9.34-0-g03d56d5380a998023fb9962627b457504181f49b
