import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('hello'),
              Text(' world'),
            ],
          ),

          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
            child: Text('one. . '),
          ),
          Container(
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('two. . '),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(40.0),
            child: Text('three. . '),
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
