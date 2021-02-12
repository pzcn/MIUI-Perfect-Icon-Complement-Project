#!/bin/bash
cd themes/lrone
mkdir -p 4b/layer_animating_icons/
cp -r 4a/miui_mod_icons/. 4b/layer_animating_icons/
cp config.xml 4b/layer_animating_icons/config.xml
cd 4b/layer_animating_icons
DIR=`ls .`
for dir in ${DIR};do
	if [ -d ${dir} ];then
		cp config.xml ${dir}/config.xml
		cd ${dir}
		mkdir -p 1/quiet
        mkdir -p 0/quiet
        mv 1.png 1/quiet/quietImage.png
        mv 0.png 0/quiet/quietImage.png
		cd ..
	fi
done
cd ../../../..

rm -rf ./themes/lrone/4b/layer_animating_icons/config.xml