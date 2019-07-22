import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  @override
  CheckedList createState() {
    // TODO: implement createState
    return CheckedList();
  }
}

class CheckedList extends State<CheckList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Check List'),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.pageview), onPressed: () {}),
        ],
      ),
    );
  }
}
