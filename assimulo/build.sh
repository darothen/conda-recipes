#!/usr/bin/env bash

if [ $(uname) == Darwin ]; then
    # Flags for compiling and linking Fortran modules on osx
    export CFLAGS="-arch x86_64"
    export FFLAGS="-static -ff2c -arch x86_64"
    export LDFLAGS="-Wall -undefined dynamic_lookup -bundle -arch x86_64"
fi

$PYTHON setup.py install 

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
