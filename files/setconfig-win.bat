@echo off

chcp 65001

if not exist ".p4ignore" (

    echo:
    echo No .p4ignore found, making a new .p4ignore file...

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

)

echo P4IGNORE=.p4ignore > .p4config

echo P4PORT=ssl:helixcore.cct.lsu.edu:1818 >> .p4config

echo:
echo This batch file creates a .p4ignore file and a .p4config file for Perforce. Your Perforce Username ^(owner^) and Workspace name can be found in P4V under View ^> Workspaces and then double clicking your workspace.
echo:

set "user=%USERNAME%" & set /p "user=What is your P4 Username? (Press enter for default of %USERNAME%) " 
echo P4USER=%user% >> .p4config

set "host=%USERDOMAIN%" & set /p "host=What is your P4 Host? (Press enter for default of %USERDOMAIN%) " 
echo P4HOST=%host% >> .p4config

set "workspace=%user%_%host%" & set /p "workspace=What is your P4 Workspace? (Press enter for default of %user%_%host%) " 
echo P4CLIENT=%workspace% >> .p4config

p4 set P4CONFIG=.p4config

echo:
echo ############################
echo ########## p4 set ##########
echo ############################
echo:

p4 set

echo:
echo ############################
echo ########## p4 info #########
echo ############################
echo:

p4 info

pause