#!/bin/bash

dir="`dirname "$0"`"
dir="`realpath "$dir"`"

rm "$dir/desktop-files/" -rf
mkdir "$dir/desktop-files/"

for app in `ls apps`; do
    ( echo '[Desktop Entry]'
      echo Name="`sed 's/_/ /g' <<< $app`"
      echo Path="$dir"
      echo Exec="yarn run nw apps/$app"
      echo Icon="$dir/apps/$app/icon.png"
      echo Type="Application"
      echo Terminal="false"
    ) > "$dir/desktop-files/$app.desktop"
    chmod +x "$dir/desktop-files/$app.desktop"
    echo "$app.desktop" ready
done

