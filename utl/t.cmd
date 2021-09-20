echo off
echo Merge working branch to -ok brnch
cd C:\Users\Ranjithj\OneDrive\Documents\Mix-Progaming\academind\django-practical-guide-course-code\django_course_env_ver-06\meetups
git add .
git commit -m "Configuring the Admin Area"
git checkout ver-07-ok
git merge ver-07
git checkout ver-07
