echo off

echo Push local master to remote rpo
rem Change branch1, branch2 and msg and execute
rem To execute: .\utl\3-push-local-master-to-remote-rpo

rem set branch1=master
set branch2=lesson-5
set msg="#5 - Scaffold & AppBar Widgets"

echo pushing %branch2% to remote rpo
git checkout %branch1%
git add .
git commit -m %msg%
git remote remove origin
git remote add origin https://github.com/ranjithjaya/Ninja-Flutter-Tutorial-for-Beginners.git
git branch -M %branch2%
git push -u origin %branch2%
git branch -M %branch1%

git branch -a
goto :end

:end