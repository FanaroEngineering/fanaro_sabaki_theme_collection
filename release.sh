#!/bin/bash

# When calling this script, pass a semantic version number as an argument.
# Example:

# ```sh
# bash release.sh 0.0.1
# ```

VERSION=$1 || exit 1

mkdir release || exit 2

find . -type f -name "*.asar" -exec cp -n {} release \; || exit 3

zip "release_v${VERSION}.zip" release/* || exit 4

rm -r release

exit 0
