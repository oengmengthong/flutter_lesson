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
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    height: 35,
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.pink[100],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('View Code'),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CodeViewTile(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: List.generate(
                  20,
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
                            )),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

class CodeViewTile extends StatelessWidget {
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
