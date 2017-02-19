#!/bin/bash

# This builds the mod by zipping everything needed and placing it in a bin directory.
# There probably should be windows support added for this as well.

cd $(dirname "$0")

export VERSION=`cat src/info.json | grep \"version\" | sed -r 's/.*: \"([0-9]+\.[0-9]+\.[0-9]+)\".*/\1/'`

mkdir bin
zip -r "bin/PneumaticTubes_$VERSION.zip" src/