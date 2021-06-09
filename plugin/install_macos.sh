#!/bin/sh

SKETCHUP_EXTENSION_LOCATION=~/Library/Application\ Support/SketchUp\ 2021/SketchUp/Plugins

sketchupId=$(ps aux | grep '/[A]pplications/SketchUp 2021/SketchUp.app/Contents/MacOS/SketchUp' | awk '{print $2}')
if [ -z $sketchupId ]
then
    echo No SketchUp process found
else
    echo Closing existing SketchUp process
    kill -9 $sketchupId
fi

rm "${SKETCHUP_EXTENSION_LOCATION}/dialog_global_bug.rb" 2> /dev/null
rm -R "${SKETCHUP_EXTENSION_LOCATION}/dialog_global_bug" 2> /dev/null

mkdir "${SKETCHUP_EXTENSION_LOCATION}/dialog_global_bug"

cp -R ./dialog_global_bug/* "${SKETCHUP_EXTENSION_LOCATION}/dialog_global_bug/"
cp dialog_global_bug.rb "${SKETCHUP_EXTENSION_LOCATION}/dialog_global_bug.rb"

open /Applications/SketchUp\ 2021/SketchUp.app/
