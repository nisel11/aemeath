kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtlanguageserver.bst
- components/qt6/qtshadertools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst

config:
  install-commands:
    (>):
    - |
      mkdir -p "%{install-root}%{bindir}"
      while read -r target link; do
        ln -sr "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtdeclarative-everywhere-src-%{qt6-version}.tar.xz'
  ref: a249914ff66cdcdbf0df8b5ffad997a2ee6dce01cc17d43c6cc56fdc1d0f4b0f

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/qml6'
        - '%{bindir}/qmlcachegen6'
        - '%{bindir}/qmleasing6'
        - '%{bindir}/qmlls6'
        - '%{bindir}/qmlpreview6'
        - '%{bindir}/qmlscene6'
