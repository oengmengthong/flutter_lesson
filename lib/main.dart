import 'package:flutter/material.dart';

import 'TextField/textField.dart';
import 'buttons/buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text(
            'All Component Flutter',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Oeng Mengthong',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              accountEmail: Text(
                'mengthongoenggl@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutUs(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('v0.0.1 beta1'),
                )
              ],
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Button Flutter: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ButtonFlutter(),
                      ),
                    );
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Text(
                  'TextField Flutter: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextFieldFlutter(),
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('About Us'),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                  'This Application will show source code for design and create component flutter. \nThis Application is in development.'),
            ],
          ),
        ),
      ),
    );
  }
}
