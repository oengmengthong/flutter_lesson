import 'package:flutter/material.dart';

class ReportButton extends StatelessWidget {

//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Button Report'),
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
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    textColor: Colors.black,
                    color: Colors.red,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.bug_report,
                          color: Colors.red[100],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Report'),
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
                    Image.asset('images/btnreport.png'),
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
