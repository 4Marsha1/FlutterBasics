import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: this.delete,
              icon: Icon(
                Icons.delete,
                color: Colors.black87,
              ),
              label: Text('Delete'),
            )
          ],
        ),
      ),
    );
  }
}
