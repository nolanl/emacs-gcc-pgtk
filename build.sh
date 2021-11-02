#!/usr/bin/env sh
docker build --pull -t konstare/emacs-gcc-pgtk . \
&& id=$(docker create konstare/emacs-gcc-pgtk) \
&& docker cp $id:/opt/deploy . \
&& docker rm $id
