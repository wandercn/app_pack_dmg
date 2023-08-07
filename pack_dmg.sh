#!/bin/bash
# ====================================================
#   Copyright (C) 2023  All rights reserved.
#
#   Author        : wander
#   Email         : wander@ffactory.org
#   File Name     : pack_dmg.sh
#   Last Modified : 2023-08-07 16:18
#   Describe      : 
#
# ====================================================


#!/usr/bin/env bash

help()
{
 echo "Help:"
 echo "pack_xxxx.sh v0.0.x appname [arm64|x86_64]-- must have version!"
}

pack()
{
SourceDir="source"
TargetDir="target"

if [ ! -d "${SourceDir}" ]; then
    mkdir ${SourceDir}
fi

if [ ! -L "${SourceDir}/Applications" ]
then
ln -sf /Applications ${SourceDir}/Applications
fi

if [ ! -d "${TargetDir}" ]; then
    mkdir ${TargetDir}
fi

#清理目标目录内容
rm -f ${TargetDir}/*

OutFile=${TargetDir}/${AppName}_${Machine}_${Version}.dmg
hdiutil create ./$OutFile -volname "$AppName" -fs HFS+ -srcfolder $SourceDir -ov -format UDZO 
md5 $OutFile> $OutFile.md5

}

AppName=$2
Version=$1
Machine="universal"

if [ "$3" != "" ]
 then
    Machine=$3
fi


if [ "$1" = "" ]
then
 help
elif [ "$2" = "" ]
then
 help
else
pack
fi




