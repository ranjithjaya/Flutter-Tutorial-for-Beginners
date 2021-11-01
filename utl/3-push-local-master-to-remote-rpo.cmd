echo off
rem ************** PARAMETERS BEGIN ********************
set branch1=master
set branch2=lesson-31
set msg="#31 - Formatting & Showing Dates"
rem To execute: .\utl\3-push-local-master-to-remote-rpo
rem ************** PARAMETERS END ********************

echo Push local master to remote rpo
rem Change branch1, branch2 and msg and execute

echo pushing %branch2% to remote rpo
git checkout %branch1%
git add .
git commit -m %msg%
rem git remote remove origin
rem git remote add origin https://github.com/ranjithjaya/Ninja-Flutter-Tutorial-for-Beginners.git
git branch -M %branch2%
git push -u origin %branch2%
pause
git branch -M %branch1%

git branch -a
goto :end

:end