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
          children: quotes.map((quote) => Text(quote)).toList(),
        ));
  }
}

