import 'package:flutter/material.dart';

import './quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});
  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 9,
            ),
            TextButton.icon(
              onPressed: delete,
              label: Text('Delet Quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
