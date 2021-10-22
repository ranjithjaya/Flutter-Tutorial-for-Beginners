/* #25 - Asynchronous Code */
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // similate network request for  username
     String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yosi';
    });

    // similate network request to get bio of the username
  String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'vegan, musician & egg collector';
    });

    print('$username - $bio');

  } // end-getData()

  @override
  void initState() {
    super.initState();
    getData();
    print('Dosent wait for await function to compleate. . ');
  }

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
      body: RaisedButton(
        onPressed: () {
          setState(() {
          });
        },
      ),
    );
  }
}
