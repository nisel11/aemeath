#!/bin/bash
cat <<EOF > include/artifacts.yml
artifacts:
- url: https://aemeath-cache.castorice.my.id
  push: true
  auth:
    client-key: aemeath.key
    client-cert: aemeath.crt
EOF
bst build aemeath/os.bst
cat <<EOF > include/artifacts.yml
artifacts:
- url: https://aemeath-cache.castorice.my.id
  auth:
    client-key: aemeath.key
    client-cert: aemeath.crt
EOF
bst build os/aemeath/export.bst
bst artifact checkout os/aemeath/export.bst --directory target
