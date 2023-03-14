#!/bin/sh

echo Binaries/ > .p4ignore
echo Saved/ >> .p4ignore
echo Intermediate/ >> .p4ignore
echo DerivedDataCache/ >> .p4ignore
echo FileOpenOrder/ >> .p4ignore
echo obj/ >> .p4ignore
echo *-Debug.* >> .p4ignore
echo *.pdb >> .p4ignore
echo .vs/ >> .p4ignore
echo *.vcxproj >> .p4ignore
echo *.sln >> .p4ignore
echo *.DS_Store >> .p4ignore
echo !Plugins/OptiTrack/** >> .p4ignore
echo !Plugins/LONET2LiveLink/** >> .p4ignore

echo P4IGNORE=.p4ignore > .p4config

echo P4PORT=ssl:helixcore.cct.lsu.edu:1818 >> .p4config

read -p "What is your P4 Username? (Default is $(whoami)) " username 
username="${username:="$(whoami)"}"
echo P4USER=$username >> .p4config

read -p "What is your P4 Host? (Default is $(hostname -s)) " host 
host="${host:="$(hostname -s)"}"
echo P4HOST=$host >> .p4config

read -p "What is your P4 Workspace? (Default is ${username}_${host}) " workspace
workspace="${workspace:="${username}_${host}"}"
echo P4CLIENT=$workspace >> .p4config

p4 set P4CONFIG=.p4config

echo
echo "############################"
echo "########## p4 set ##########"
echo "############################"
echo 

p4 set

echo
echo "############################"
echo "########## p4 info #########"
echo "############################"
echo

p4 info