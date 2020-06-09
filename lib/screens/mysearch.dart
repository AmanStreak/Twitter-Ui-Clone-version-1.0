import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  @override
  _MySearchState createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(
      length: 7,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: TabBar(

          labelPadding: EdgeInsets.only(top: 20.0, left: 12.0, bottom: 7.0),
          isScrollable: true,
          controller: tabController,
          tabs: <Widget>[
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
            Text('Entertainment', style: TextStyle(color: Colors.black,)),
          ],
        ),
      ),
      body: TabBarView(

        controller: tabController,
        children: <Widget>[
          Icon(Icons.check_circle),
          Icon(Icons.check_circle),
          Icon(Icons.check_circle),
          Icon(Icons.check_circle),
          Icon(Icons.check_circle),
          Icon(Icons.check_circle),
          Icon(Icons.check_circle),
        ],
      ),
    );
  }
}
