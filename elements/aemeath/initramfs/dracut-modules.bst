kind: import

sources:
- kind: local
  path: files/dracut-modules

config:
  source: /
  target: /usr/lib/dracut/modules.d
