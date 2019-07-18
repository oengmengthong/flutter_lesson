import 'package:flutter/material.dart';

class FlowerButton extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Button Flower'),
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
                  height: 35,
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.local_florist,
                        color: Colors.pink[100],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Flower'),
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
                    Image.asset('images/btnflower.png'),
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
