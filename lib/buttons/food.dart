import 'package:flutter/material.dart';

class FoodButton extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Button Food'),
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
                  shape: UnderlineInputBorder(),
                  color: Colors.greenAccent,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.fastfood,
                        color: Colors.greenAccent[100],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Food')
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
                    Image.asset('images/btnfood.png'),
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
