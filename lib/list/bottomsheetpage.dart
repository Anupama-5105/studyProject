import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {

  String _selectedItem = '';
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  void _selectItem(String name){
    Navigator.pop(context);
    setState(() {
       _selectedItem = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Bottom Sheet Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Show Bottom Sheet'),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.ac_unit),
                              title: Text('Cooling'),
                              onTap: () => _selectItem('Cooling'),
                            ),
                            ListTile(
                              leading: Icon(Icons.access_alarm),
                              title: Text('Alarm'),
                              onTap: () => _selectItem('Alarm'),
                            ),
                            ListTile(
                              leading: Icon(Icons.accessibility),
                              title: Text('People'),
                              onTap: () => _selectItem('People'),
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
            RaisedButton(
              child: Text('Show'),
              onPressed: () {
                _scaffoldKey.currentState.showBottomSheet((context) => Container(
                  height: 400,
                  color: Colors.deepOrangeAccent,
                ) );
                // showBottomSheet(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return Container(
                //         height: 400,
                //         color: Colors.deepOrangeAccent,
                //       );
                //     });
              },
            ),
            Text(
              _selectedItem,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

