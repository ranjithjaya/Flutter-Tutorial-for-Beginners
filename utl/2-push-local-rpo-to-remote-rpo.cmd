echo off

echo Push local rpo to remote rpo
rem Change branch1, branch2 and msg and execute
rem To execute: .\utl\2-push-local-rpo-to-remote-rpo

rem set branch1=
set branch2=lesson-6
set msg="#6 - Colours & Fonts"

echo pushing %branch2% to remote rpo
git checkout %branch2%
git remote remove origin
git remote add origin https://github.com/ranjithjaya/Ninja-Flutter-Tutorial-for-Beginners.git
rem git branch -M main
git push -u origin %branch2%

git branch -a
goto :end

:end