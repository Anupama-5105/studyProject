import 'package:flutter/material.dart';

class TabBarView1 extends StatefulWidget {
  @override
  _TabBarView1State createState() => _TabBarView1State();
}

class _TabBarView1State extends State<TabBarView1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4 ,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabbed Bar'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
              icon: Icon(Icons.directions_bus),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.directions_boat),
              ),
              Tab(
                icon: Icon(Icons.directions_car),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(child: Icon(Icons.directions_bus,size: 100,),),
            Container(child: Icon(Icons.directions_bike,size: 100,),),
            Container(child: Icon(Icons.directions_boat,size: 100,),),
            Container(child: Icon(Icons.directions_car,size: 100,),),
          ],
        ),
      ),
    );
  }
}
