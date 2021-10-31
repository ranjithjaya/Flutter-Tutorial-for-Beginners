/* #30 - Passing Route Data */
import 'package:flutter/material.dart';
import 'dart:convert';
import '../services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instence = WorldTime('Berlin', 'germany.png', 'Europe/London');
    //WorldTime instence = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/London');
    await instence.getTime();
    // redirecting. .
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instence.location,
      'flag': instence.flag,
      'time': instence.time,
    });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: Text('loading screen')
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading. . '),
      ),
    );
  }
}
