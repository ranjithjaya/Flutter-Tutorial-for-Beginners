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

    body: Center(
    child: Image(
      // Fisst method:
      // image: AssetImage('assets/nature-1.jpg'),
      // 2nd method:
       image: AssetImage('nature-1.jpg'),
      // 3rd method:   //Not working
      // image: Image.asset('nature-1.jpg'),
    )),
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
