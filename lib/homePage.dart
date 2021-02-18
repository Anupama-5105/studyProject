import 'package:flutter/material.dart';
import 'package:my_app/list/checkAndRadioPage.dart';
import 'package:my_app/list/quote_card.dart';
import 'package:my_app/list/tabbarview.dart';
import 'list/listView.dart';
import 'package:my_app/list/gridview.dart';
import 'package:my_app/list/stackpage.dart';
import 'package:my_app/list/alertpage.dart';
import 'package:my_app/list/bottomsheetpage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuoteList(),
                  ),
                );
              },
              child: Text(
                'View List',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuoteCardList(),
                  ),
                );
              },
              child: Text(
                'View Cards',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridViewPage(),
                    ),);
              },
              child: Text(
                'Grid View',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height:10,),
            MaterialButton(
              height: 55,
              color: Colors.red,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TabBarView1()
                    ),
                );
              },
              child: Text(
                  'TabBars',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              color: Colors.red,
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackPage1()
                    ),
                );
              },
              child: Text(
                'Stack',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              height:55,
              minWidth: double.infinity,
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AlertPage()
                    ),
                );
              },
              child: Text(
                'Alert & SnackBar Page',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              color: Colors.red,
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>BottomSheetPage()),
                );
              },
              child: Text(
                'Bottom Sheet',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              height: 55,
              minWidth:double.infinity,
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                  MaterialPageRoute(builder: (contex) => CheckAndRadioPage())
                );
              },
              child: Text(
                'CheckBox & RadioButtons',
                    style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
