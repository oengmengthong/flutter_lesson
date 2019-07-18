import 'package:flutter/material.dart';

class MapButton extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Button Map'),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  height: 35,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          color: Colors.green[100],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Map'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Image.asset('images/btnmap.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
