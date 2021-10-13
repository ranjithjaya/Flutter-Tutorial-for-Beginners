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
  
## #7 - Stateless Widgets & Hot Reload 
[Tutorial url](https://www.youtube.com/watch?v=zwPBMg3SHVU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=7)
Hey gang, in this Flutter tutorial I'll talk about what 
stateless widgets are and how we can begin to make our 
code more modular by using them. We'll also see how they 
help us with a feature called hot reload, to help speed up 
development.### Say Flutter to do Hot reload
- Create Statelesswijet
  - go to bottom in main.dart 
  - type 'stless' and press tab. . this will create required snippet
  - rename the wijet name to 'Home'
  - now cut and paste all of the code in home: Scaffold() to here
  - replace home: with home: Home(),
  - save and see Flutter will automatically run Hot reload
  - notice that this Home widget can be used anywhere
  
## #8 - Images & Assets
[Tutorial url](https://www.youtube.com/watch?v=Hxh6nNHSUjo&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=8)
Hey ninjas, in this Flutter tutorial I'll show you how to 
work with images. I'll show you two types of Image widget 
- the network image widget and the asset image widget.
### Add network image to body:
- delete content of body:/Center(child:    with 
````Flutter
    body: Center(
    child: Image(
      image: NetworkImage('https://lh3.googleusercontent.com/proxy/iPgxq0SX00HSYOK339Fn8j4PXvJk6xaq7SK_vvZkivho8hOSXP_qv4E5NHtOB6YbuRKxFVaoOF2_UYMmpoQBDb55oLb9BTeloGJ16hpYcnAx'),
    )),
````
### Add AssetImage image to body:
- add followings to assets/pubspec.yaml
````Flutter
assets:
  # - assets/nature-1.jpg
  # - assets/nature-2.jpg
  # - assets/nature-3.jpg
  - assets/
````
- delete content of body:/Center(child:    with
````Flutter
    body: Center(
    child: Image(
      // image: AssetImage('assets/nature-1.jpg'),
      image: AssetImage('nature-1.jpg'),
    )),
````

## #9 - Buttons & Icons
[Tutorial url](https://www.youtube.com/watch?v=ABmqtI7ec7E&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=9)
Hey gang, in this Flutter tutorial we'll see how to use both 
the Icon and the various Button widgets (flat & raised), 
as well as how both can work together to create icons 
inside buttons.
### add Icon() widget
````Flutter
- clear body: and add as follows
  body: Center(
    child: Icon(
      Icons.airport_shuttle
      color: Colors.lightBlue,
      size: 50.0,
    ),
  ),
````
### add RaisedButton() or FlattButton() widget
````Flutter
- clear body: and add as follows
      body: Center(
        child: RaisedButton(
        onPressed: () {},
        child: Text('click me. . '),
        color: Colors.lightBlue,
      )),
````
### add RaisedButton() with icon widget
````Flutter
- clear body: and add as follows
      body: Center(
          child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.mail),
        label: Text('mail me'),
        color: Colors.amber,
      ))
````
### add IconButton() with onClick event
````Flutter
- clear body: and add as follows
      body: Center(
          child: IconButton(
        onPressed: () {
          print('you clicked me');
        },
        icon: Icon(Icons.alternate_email),
        color: Colors.amber,
      )),
````