#!/bin/sh
set -eu

mkdir -p ./pyfix

cat > ./pyfix/sitecustomize.py <<'PY'
import distutils.version  # ensure distutils.version attribute exists
PY

echo "[OK] wrote ./pyfix/sitecustomize.py"
