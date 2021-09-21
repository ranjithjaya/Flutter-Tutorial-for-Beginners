echo off

rem create a branch from working branch
rem Change branch1, branch2 and msg and execute
rem To execute: .\utl\create-and-save-to-new-branch

set branch1=master
set branch2=lesson-4
set msg="#4 - Creating a Flutter App in Android Studio"

echo creating %branch2% from %branch1%
rem cd C:\Users\Ranjithj\OneDrive\Documents\Mix-Progaming\academind\django-practical-guide-course-code\django_course_env_ver-06\meetups
git add .
git commit -m %msg%
git checkout -b %branch2%
rem git merge %branch1%
rem git checkout %branch1%
git branch -a
goto :end

:end