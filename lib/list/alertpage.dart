import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  createAlertDialog(BuildContext context) {
    TextEditingController mycontroller = TextEditingController();

    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('Your Name ?'),
            content: TextField(
              controller: mycontroller,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop(mycontroller.text.toString());
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Pop-Up'),
        ),
        body: Builder(builder: (context) {
          return Container(
            child: Center(
              child: RaisedButton(
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.redAccent[400],
                textColor: Colors.white,
                onPressed: () {
                  createAlertDialog(context).then((onValue) {
                    SnackBar mySnackBar =
                        SnackBar(content: Text('Hello $onValue'),
                          duration: Duration(seconds: 2),
                        );
                    Scaffold.of(context).showSnackBar(mySnackBar);
                  });
                },
                child: Text(
                  'Alert !!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        }));
  }
}
