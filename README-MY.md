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

## #17 - Lists of Data
[Tutorial url](https://www.youtube.com/watch?v=_AC90CiDoKA&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=17)

Hey all, in this Flutter tutorial I'll show you how we can cycle through lists of data and output that data in our widget tree using the map method.
````Drat
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // home: NinjaCard(),
      home: QuoteList(),
    ));

// #17 - Lists of Data

class QuoteList extends StatefulWidget {
  // const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'aaaaaaaaaaaaaaaaaaaaaaaaaa',
    'bbbbbbbbbbbbbbbbbbbbbbbbb',
    'cccccccccccccccccccccccccccc'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          // First method
          /*
            children: quotes.map((quote) {
              return Text(quote);
            }).toList(),
          */

          // Second method
        ));
          children: quotes.map((quote) => Text(quote)).toList(),
  }
}
````

## #18 - Custom Classes
[Tutorial url](https://www.youtube.com/watch?v=QgQJJ0y0A6w&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=18)

````Drat
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      // home: NinjaCard(),
      home: QuoteList(),
    ));

// #18 - Custom Classes

class QuoteList extends StatefulWidget {
  // const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'aaaaaaaaaaaaaaaaaaaaaaaaaa'),
    Quote(author: 'Oscar Wilde', text: 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
    Quote(author: 'Oscar Wilde', text: 'ccccccccccccccccccccccccc')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          // First method
          /*
            children: quotes.map((quote) {
              return Text(quote);
            }).toList(),
          */

          // Second method
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        ));
  }
}
````

## #19 - Cards
[Tutorial url](https://www.youtube.com/watch?v=XIxahpXU_QE&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=19)

````Drat
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      // home: NinjaCard(),
      home: QuoteList(),
    ));

// #19 - Cards

class QuoteList extends StatefulWidget {
  // const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'aaaaaaaaaaaaaaaaaaaaaaaaaa'),
    Quote(author: 'Oscar Wilde', text: 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
    Quote(author: 'Oscar Wilde', text: 'ccccccccccccccccccccccccc')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )),
            SizedBox(height: 6.0),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ));
  }
}
````

## #20 - Extracting Widgets
[Tutorial url](https://www.youtube.com/watch?v=jAxNZYX7mHM&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=20)

Hey gang, in this Flutter tutorial I'll show you how you can extract widget trees into their own re-usable class widget.
````Drat
// #20 - Extracting Widgets
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'aaaaaaaaaaaaaaaaaaaaaaaaaa'),
    Quote(author: 'Oscar Wilde', text: 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
    Quote(author: 'Oscar Wilde', text: 'ccccccccccccccccccccccccc')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
            children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}
````

- quote_card.dart
````Drat
// #20 - Extracting Widgets
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )),
            SizedBox(height: 6.0),
          ],
        ),
      ),
    );
  }
}
````

## #21 - Functions as Parameters
[Tutorial url](https://www.youtube.com/watch?v=aqePcMyeoIY&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=21)

Hey gang, in this Flutter tutorial I'll show you how we can update the state of our 'parent' widget by passing a function into a nested 'child' widget.
````Drat
/* #21 - Functions as Parameters */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'aaaaaaaaaaaaaaaaaaaaaaaaaa'),
    Quote(author: 'Oscar Wilde', text: 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
    Quote(author: 'Oscar Wilde', text: 'ccccccccccccccccccccccccc')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
            children: quotes.map((quote) => QuoteCard(
                quote: quote,
              delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });

              }
            )).toList(),
        )
    );
  }
}
````

- quote_card.dart
````Drat
/* #21 - Functions as Parameters */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  /*
  final Function  delete;
  - Function does not work
  - Replace Function with VoidCallback
  */
  final VoidCallback  delete;
  QuoteCard({ required this.quote,  required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
                onPressed: delete,
                label: Text('delete quote'),
                icon: Icon(Icons.delete)
            )

          ],
        ),
      ),
    );
  }
}
````

## #22 - Starting the World Time App
[Tutorial url](https://www.youtube.com/watch?v=WghpP9W2vXo&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=22)

Hey gang, in this Flutter tutorial we'll start our final, bigger project - the World Time app. 

- main.dart
````Drat
/* #22 - Starting the World Time App */
import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));
````

- pages/home.dart
````Drat
/* #22 - Starting the World Time App */
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('home screen')),
    );
  }
}
````

- pages/choose_location.dart
````Drat
/* #22 - Starting the World Time App */
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('choose location screen'),

    );
  }
}
````

- pages/loading.dart
````Drat
/* #22 - Starting the World Time App */
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('loading screen')
    );
  }
}
````

## #23 - Maps & Routing
[Tutorial url](https://www.youtube.com/watch?v=WG5tJIAq5b0&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=24)

Hey gang, in this Flutter tutorial we'll talk a little bit about Maps in Dart and routing for your apps (when you have multiple screens to transition between).

- main.dart
````Drat
/* #23 - Maps & Routing */

import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
    ));
````

- pages/home.dart
````Drat
``/* #23 - Maps & Routing */
import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          // child: Text('home screen')
          child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text('Edit location'),
                ),
              ],
          )
      ),
    );
  }
}
``
- pages/choose_location.dart
````Drat
`/* #23 - Maps & Routing */
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          // child: Text('home screen')
          child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text('Edit location'),
                ),
              ],
          )
      ),
    );
  }
}
```

- pages/loading.dart
````Drat
/* #23 - Maps & Routing */
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,  // remove the block shadow
      ),
      body: Text('choose location screen'),
    );
  }
}
````