import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: Quotes()));
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  void deleteQuote(Quote quote) {
    setState(() {
      quotes.remove(quote);
    });
  }

  List<Quote> quotes = [
    Quote(
        text: 'hello this is my world and those there are all my projects',
        author: 'ghazali hichem'),
    Quote(text: 'I know much things and I can learn well', author: 'hichem'),
    Quote(
      text: 'I am successful and I will do everything',
      author: 'ghazali',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                deleteQuote: () {
                  deleteQuote(quote);
                }))
            .toList(),
      ),
    );
  }
}
