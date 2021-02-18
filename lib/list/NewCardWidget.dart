import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/list/card_list.dart';

class NewCardWidget extends StatelessWidget {

  final QuoteCard card;
  final Function delete;
  NewCardWidget({this.card, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
      color: Colors.red[200],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              card.text,
              style:TextStyle(
                color: Colors.grey[800],
                fontSize:18.0,
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              card.author,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}