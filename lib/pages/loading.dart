/* #28 - WorldTime Custom Class */
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
    print(instence.time);
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('loading screen')
    );
  }
}
