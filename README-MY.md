# Flutter Tutorial for Beginners
- Aurhor: Ninja
- Date: 20-Sep-2021
## Local setting
- Folder: C:\MY-DATA\Mix-Progaming\Ninja\Flutter Tutorial for Beginners\ninja_id
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

## #15 - Ninja ID Project
[Tutorial url](https://www.youtube.com/watch?v=c063ddhWafo&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=15)

Hey gang, in this Flutter tutorial we'll put everything together that we've learnt so far about Flutter and create a mini app project (a ninja ID card!). We'll also take a look at a couple of new widgets - SizedBox and CircleAvatar
````Drat
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, //To remove drop shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('person-image-1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, //space between leters of NAME
              ),
            ),
            SizedBox(height: 10.0), // blank area between Texts
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, //space between leters of NAME
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '8',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                'chun-li@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
````

## #16 - Stateful Widgets
[Tutorial url](https://www.youtube.com/watch?v=p5dkB3Mrxdo&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=16)

Hey gang, in this Flutter tutorial we'll take a look at using stateful widgets as well as stateless ones. Stateful widgets are ones which can contain changing state / data over time.
````Drat
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

// #16 - Stateful Widgets
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, //To remove drop shadow
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('person-image-1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, //space between leters of NAME
              ),
            ),
            SizedBox(height: 10.0), // blank area between Texts
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),

            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, //space between leters of NAME
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0),
              Text(
                'chun-li@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

````