#!/bin/usr/zsh

if [[ "$(uname)" == "Darwin" ]]; then
  for app in /Applications/*.app;do
    if [[ -d "$app" ]]; then
      alias_prefix="${${$(basename $app)/.app/}// /_}"
      for executables in $app/Contents/MacOS/*;do
        alias_suffix="$(basename $executables)"
        alias "$alias_prefix-$alias_suffix"="'$app/Contents/MacOS/$alias_suffix'"
      done
    fi
  done
fi
