
#!/bin/usr/zsh


for app in /Applications/*.app;do
  if [[ -d "$app" ]]; then
    alias_prefix="${${$(basename $app)/.app/}// /_}"
    for executables in $app/Contents/MacOS/*;do
      alias_suffix="$(basename $executables)"
      #echo "$alias_prefix-$alias_suffix = $app/Contents/MacOS/$alias_suffix"
      alias "$alias_prefix-$alias_suffix"="'$app/Contents/MacOS/$alias_suffix'"
    done
  fi
done
