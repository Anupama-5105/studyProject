import 'package:flutter/material.dart';
import 'package:my_app/list/card_list.dart';
import 'package:my_app/list/NewCardWidget.dart';


class QuoteCardList extends StatefulWidget {
  @override
  _QuoteCardListState createState() => _QuoteCardListState();
}

class _QuoteCardListState extends State<QuoteCardList> {
  
 List<QuoteCard> qcd= [
   QuoteCard(text: 'Quote number 1',author: 'author 1'),
   QuoteCard(text: 'Quote number 2',author: 'author 2'),
   QuoteCard(text: 'Quote number 3',author: 'author 3'),
 ];
 
  // Widget quoteTemplate(card){
   //return NewCardWidget(card: card);}
 
  //var a = QuoteCard(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote Cards'),
        centerTitle: true,
      ),
      body: Column(
        children: qcd.map((card) => NewCardWidget(
            card: card,
          delete: () {
              setState(() {
                qcd.remove(card);
              });
          }
        )).toList(),
        //children: qcd.map((card) => quoteTemplate(card)).toList(),
      ),
      // body: ListView.builder(
      //     itemCount: qcd.length,
      //   itemBuilder: (context,index){
      //       return ListTile(
      //         title: Text('${quoteTemplate(index)}'), //'${qcd[index].text}''-''${qcd[index].author}'
      //       );
      //   },
      // ),
    );
  }
}


