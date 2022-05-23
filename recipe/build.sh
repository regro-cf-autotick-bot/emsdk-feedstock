#!/bin/sh

# Construct $PREFIX/bin/emsdk
mkdir -p $PREFIX/bin
cp $RECIPE_DIR/emsdk $PREFIX/bin/emsdk

# Construct the emsdk Python module
mkdir -p $PREFIX/lib/python$PY_VER/site-packages/emsdk
cp -r * $PREFIX/lib/python$PY_VER/site-packages/emsdk
touch $PREFIX/lib/python$PY_VER/site-packages/emsdk/__init__.py

# Copy the [de]activate scripts to $PREFIX/etc/conda/[de]activate.d.
# This will allow them to be run on environment activation.
for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/${PKG_NAME}_${CHANGE}.sh"
done
