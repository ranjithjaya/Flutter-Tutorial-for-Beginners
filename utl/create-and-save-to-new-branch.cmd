echo off

rem Merge working branch to -ok branch
rem Change branch1, branch2 and msg and execute

set branch1=main
set branch2=lesson-4
set msg="#4 - Creating a Flutter App in Android Studio"

echo Merging %branch1% to %branch2%
rem cd C:\Users\Ranjithj\OneDrive\Documents\Mix-Progaming\academind\django-practical-guide-course-code\django_course_env_ver-06\meetups
git add .
git commit -m %msg%
git checkout -b %branch2%
rem git merge %branch1%
rem git checkout %branch1%
goto :end

:end