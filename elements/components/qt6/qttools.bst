kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

config:
  install-commands:
    (>):
    - |
      mkdir -p "%{install-root}%{bindir}"
      while read -r target link; do
        ln -sr "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

    - |
      cd "%{install-root}%{libdir}/qt6/bin"
      for f in qtdiag; do
        if [ -f "$f" ] && [ -f "${f}6" ]; then
          ln -sf "${f}6" "$f"
        fi
      done

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qttools-everywhere-src-%{qt6-version}.tar.xz'
  ref: 1e3d2c07c1fd76d2425c6eaeeaa62ffaff5f79210c4e1a5bc2a6a9db668d5b24

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pixeltools6'
        - '%{bindir}/qtdiag6'
        - '%{bindir}/qtplugininfo6'
