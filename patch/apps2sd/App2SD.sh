#!/bin/bash

#put this in Root of your PAC Folder and run chmod +x App2SD.sh
#Folder App2SD must in the root of your PAC Folder too

SOURCE=~/cm11 # Edit to your PAC Folder

#######################################################
#    App2SD Support                                   #
# Credits to Xiao-Long Chen                           #
#######################################################

###################################################
#If you use JFLTE DEVICE, USE THIS AND COMMENT OUT#
###################################################
#cd $SOURCE && cd device/samsung/jflte
#patch -p1 < $SOURCE/App2SD/0001-Jflte-Enable-app2sd.patch && git add -A && git commit -m "jflte: App 2SD Enable app moving support" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"

###################################################
#If you use D2LTE DEVICE, USE THIS AND COMMENT OUT#
###################################################
#cd $SOURCE && cd device/samsung/d2lte
#patch -p1 < $SOURCE/App2SD/0001-D2lte-Enable-app2sd.patch && git add -A && git commit -m "2dlte: App 2SD Enable app moving support" --author "nicklovell23 <nicklovell23@gmail.com>"

###################################################
#If you use P51XX DEVICE, USE THIS AND COMMENT OUT#
###################################################
#cd $SOURCE && cd device/samsung/p5100
#patch -p1 < $SOURCE/App2SD/0001-P5100-Enable-app2sd.patch && git add -A && git commit -m "P51XX: App 2SD Enable app moving support" --author "andi34 <skate4life@gmx.de>"

###################################################
#If you use P31XX DEVICE, USE THIS AND COMMENT OUT#
###################################################
#cd $SOURCE && cd device/samsung/p3100
#patch -p1 < $SOURCE/App2SD/0001-P3100-Enable-app2sd.patch && git add -A && git commit -m "31XX: App 2SD Enable app moving support" --author "andi34 <skate4life@gmx.de>"

#######################################################
#If you use Galaxy S2 DEVICE, USE THIS AND COMMENT OUT#
#######################################################
#cd $SOURCE && cd device/samsung/galaxys2-common
#patch -p1 < $SOURCE/App2SD/0001-Galaxys2-common-Enable-app2sd.patch && git add -A && git commit -m "galaxys2-common: App 2SD Enable app moving support" --author "Josue Rivera <prbassplayer@gmail.com>"

###################################################
#If you use I9500 DEVICE, USE THIS AND COMMENT OUT#
###################################################
#cd $SOURCE && cd device/samsung/i9500
#patch -p1 < $SOURCE/App2SD/0001-I9500-Enable-app2sd.patch && git add -A && git commit -m "I9500: App 2SD Enable app moving support" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"

#######################################################
#If you use a other Device, you must write self and   #
#See other Patches by Gerrit from SlimRom             #
#######################################################

##########
###MAIN###
##########

cd $SOURCE && cd frameworks/native
patch -p1 < $SOURCE/App2SD/0001-Native-App2SD-Calculate-application-sizes-correctly.patch && git add -A && git commit -m "Native:  App 2SD Calculate application sizes correctly" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"

cd $SOURCE && cd system/vold
patch -p1 < $SOURCE/App2SD/0001-Vold-App2SD.patch && git add -A && git commit -m "Vold: App 2SD Allow ASEC containers on an external volume when internal is emulated" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"

cd $SOURCE && cd frameworks/base
patch -p1 < $SOURCE/App2SD/0001-Base-App2SD-changes-for-moving-applications-to-externa.patch && git add -A && git commit -m "Framework: App 2SD Changes for moving applications to external volume" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"
patch -p1 < $SOURCE/App2SD/0001-Base-App2SD-Add-class-for-changing-app-moving-setting.patch && git add -A && git commit -m "Frameworks: App 2SD Add class for changing app moving setting" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"

cd $SOURCE && cd packages/apps/Settings
patch -p1 < $SOURCE/App2SD/0001-Settings-App2SD1-Add-app-moving-setting.patch && git add -A && git commit -m "Settings: App 2SD Add app moving setting to the menu in Settings -> Apps" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"
patch -p1 < $SOURCE/App2SD/0001-Settings-App2SD-Enable-moving-applications-to-an-external-volume.patch && git add -A && git commit -m "Settings: App 2SD Enable moving applications to an external volume" --author "Xiao-Long Chen <chenxiaolong@cxl.epac.to>"
cd $SOURCE
