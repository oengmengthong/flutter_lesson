import 'package:flutter/material.dart';

class ListTileFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('List Tile'),
        ),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>CodeViewTile(),),);
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text('Tile 0: basic'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.format_list_bulleted),
                    title: Text('Tile 1: with leading & trailing'),
                    trailing: Icon(Icons.format_list_bulleted),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Tile 2: with subtitle'),
                    subtitle: Text('subtitle of Tile 2'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Tile 3: 3 line'),
                    isThreeLine: true,
                    subtitle: Text('subtitle of tile 3'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Tile 4: dense'),
                    dense: true,
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.all(20),
                    title: Text('Tile 5 with padding'),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('List View using leading icon'),
                    subtitle: Text('subtitle'),
                    trailing: Icon(
                      Icons.ac_unit,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CodeViewTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Code List Tile')
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            Image.asset('images/listtile.png'),
            Image.asset('images/listbuilder.png'),
          ],
        ),
      ),
    );
  }
}
