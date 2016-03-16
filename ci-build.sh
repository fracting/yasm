#!/bin/bash

if test "$platform" = "bash"; then
    echo apt-get install something
elif test "$platform" = "mingw32"; then
    pacman --sync --noconfirm --noprogressbar mingw-w64-i686-gettext
else
    echo "unknown environment!"
    exit 1
fi

./autogen.sh
./configure
make
make test
