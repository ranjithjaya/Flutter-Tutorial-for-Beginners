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


