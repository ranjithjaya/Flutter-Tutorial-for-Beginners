echo off

echo Push local rpo to remote rpo
rem Change branch1, branch2 and msg and execute
rem To execute: .\utl\2-push-local-rpo-to-remote-rpo

set branch1=lesson-4
set branch2=lesson-4
set msg="#4 - Creating a Flutter App in Android Studio"

echo pushing %branch2% to remote rpo
git checkout %branch2% 
git remote remove origin
git remote add origin https://github.com/ranjithjaya/Ninja-Flutter-Tutorial-for-Beginners.git
rem git branch -M main
git push -u origin %branch2%

git branch -a
goto :end

:end