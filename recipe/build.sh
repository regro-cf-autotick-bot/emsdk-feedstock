#!/bin/sh

# Construct $PREFIX/bin/emsdk
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/emsdk $PREFIX/bin/emsdk

# Construct the emsdk Python module
mkdir -p $PREFIX/lib/python$PY_VER/site-packages/emsdk
cp -r * $PREFIX/lib/python$PY_VER/site-packages/emsdk
touch $PREFIX/lib/python$PY_VER/site-packages/emsdk/__init__.py
