import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Button Add'),
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
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
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
                    Image.asset('images/btnadd.png'),
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
