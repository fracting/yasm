#!/bin/bash

if test "my_shell" = "bash"; then
    echo apt-get install something
elif test "my_shell" = "mingw32"; then
    pacman --sync --noconfirm --noprogressbar mingw-w64-i686-gettext
else
    echo "unknown environment!"
    exit 1
fi

./autogen.sh
./configure
make
make test
