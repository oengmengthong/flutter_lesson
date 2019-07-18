import 'package:flutter/material.dart';

class ClockButton extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Button Clock'),
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
                MaterialButton(
                  color: Colors.yellow,
                  shape: OutlineInputBorder(),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_alarm,
                        color: Colors.deepPurple[100],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Clock'),
                    ],
                  ),
                  onPressed: () {},
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
                    Image.asset('images/btnclock.png'),
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
