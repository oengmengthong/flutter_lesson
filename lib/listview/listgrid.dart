import 'package:flutter/material.dart';

class ListGridFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('List Grid'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.pageview),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeViewGrid(),
                  ),
                );
              }),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: List.generate(
          30,
          (index) {
            return Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(30),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$index',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CodeViewGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: Text('Code List Tile')),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Image.asset('images/listgrid.png'),
          ],
        ),
      ),
    );
  }
}
