import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function deleteQuote;
  const QuoteCard({required this.quote, required this.deleteQuote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[800], fontSize: 16.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
                onPressed: () => deleteQuote(),
                icon: Icon(Icons.delete),
                label: Text('delete me'))
          ],
        ),
      ),
    );
  }
}
