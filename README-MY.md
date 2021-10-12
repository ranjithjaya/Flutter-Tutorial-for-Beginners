# Flutter Tutorial for Beginners
- Aurhor: Ninja
- Date: 20-Sep-2021
## #4 - Creating a Flutter App in Android Studio
[Tutorial url](https://www.youtube.com/watch?v=TSIhiZ5jRB0)
## Local setting
- Folder: C:\MY-DATA\Mix-Progaming\Ninja\Flutter Tutorial for Beginners\myapp
### Git commands
| command      | Description |
| ----------- | ----------- |
| git add .      | Transfer WA to SA       |
| git commit -m msg      | Transfer WA to RPO       |
| git checkout branch      | Set as current branch       |
| git checkout -b branch      | Create a branch and set as current branch       |
| git branch -a      | Branch list       |
| git remote -v | check the Alias|
| git remote remove origin | Remove Alias |
| git remote -v | check the Alias |
| git remote add origin https://github.com/ranjithjaya/Ninja-Flutter-Tutorial-for-Beginners.git | git | Set Alias for the remote rpo-url |
| git push -u origin master | Push local rpo to remote rpo |
| $ git branch -M <newbranchname> | Rename local branch main |
| git push -u origin <newbranchname> | Push local rpo to remote rpo |
| git branch -M main | Rename branch to main for further development |
| git branch -d <branch> | Deleting a branch LOCALLY |
|  |  |

## #5 - Scaffold & AppBar Widgets
- git add .
- git commit -m "#5 - Scaffold & AppBar Widgets"
- git checkout -b lesson-5
- git checkout master

- git branch -D  lesson-5
- git add .
- git commit -m "Made some changes ro README-MY.md"
- git checkout -b lesson-5
- git checkout master

- git branch -a
- git remote -v
- git push -u origin lesson-5

## #6 - Colours & Fonts
home: Scaffold(. .  is default style, alll in blue color which we want to customize now
### add background color to Appbar
- home:/Appbar:/Title:
    - Type backgroundColor: Colors. 
    - select 'red' from drop down menu 
    - press Cntrl+Q to select strenth with []
    - and finaly look like
        - backgroundColor: Colors.red[600],
### add background color to floatingActionButton
- floatingActionButton:/child:
    - backgroundColor: Colors.red[600],
### add properties to body:
- body:/Center(child:/Text(
````Flutter
  body: Center(
  child: Text(
  'hello, ninjas!',
  style: TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 2.0,
  color: Colors.grey[600],
````
### add custom fonts family
- go to google fonts
  - search for 'indie flower' and download it
  - now create a folder name 'fonts'
  - extract the downloaded zip and copy 'IndieFlower-Regular.ttf' to fonts folder
- add this fonts to src
  - open file 'pubspec.yaml'
    - select comented fonts: block
    - pres Ctrl+Widows+/ to uncomment it
    - edit as follows
    - Warning: each tab indented with 2 blanks

````Flutter
fonts:
  = family: indieFlower                     
    fonts:
      = asset: fonts/indieFlower-Regular.ttf
````    
- save it and add this to main.dart
    - fontFamily: 'indieFlower',
 
