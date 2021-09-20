echo off

rem Merge working branch to -ok branch
rem Change branch1, branch2 and msg and execute

set branch1=ver-07
set branch2=ver-07-ok
set msg="More Meetup Fields & Outputting Related Data"

echo Merging %branch1% to %branch2%
rem cd C:\Users\Ranjithj\OneDrive\Documents\Mix-Progaming\academind\django-practical-guide-course-code\django_course_env_ver-06\meetups
git add .
git commit -m %msg%
git checkout %branch2%
git merge %branch1%
git checkout %branch1%
goto :end

:end