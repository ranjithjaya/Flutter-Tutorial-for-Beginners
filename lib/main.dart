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

      body: Container(
        /* padding is inside the container and margin is outside the container */
        //padding: EdgeInsets.all(20.0),
        //padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),

        //padding: EdgeInsets.fromLTRB(left, top, right, bottom)
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),

        /* exctly the same for the margin */
        margin: EdgeInsets.all(30.0),

        color: Colors.grey[400],
        child: Text('hello'),

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
