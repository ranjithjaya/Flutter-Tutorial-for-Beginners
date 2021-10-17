import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    var image;
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body: Row(
        children: <Widget>[

            // Fisst method:
            // image: AssetImage('assets/nature-1.jpg'),
            // 2nd method:
            // image: AssetImage('nature-1.jpg'),
            // 3rd method:   //Not working
          image: Image.asset('nature-1.jpg'),
          
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('1'),
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('2'),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30.0),
              child: Text('3'),
            ),
          ),
          
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('you clicked me');
        },
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
