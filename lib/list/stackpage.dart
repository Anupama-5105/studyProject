import 'package:flutter/material.dart';

class StackPage1 extends StatefulWidget {
  @override
  _StackPage1State createState() => _StackPage1State();
}

class _StackPage1State extends State<StackPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Stack Page'),
      ),
      body:Center(
        child:Container(
          color:Colors.grey,
          width: 700,
          height: 600,
          child: Stack(
            alignment: Alignment.topLeft,
            overflow: Overflow.visible,
            //fit: StackFit.expand,
            children: [
              Container(
                color: Colors.cyanAccent,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.deepOrange,
                width:150,
                height: 150,
              ),
              Positioned(
                bottom: -30,
                right:0,
                child: Container(
                  color: Colors.amberAccent,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
