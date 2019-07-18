import 'package:flutter/material.dart';

class TextFieldAlarm extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Text Field Alarm'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.access_alarm,
                    ),
                    labelText: 'Alarm',
                  ),
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
                    Image.asset('images/fieldalarm.png'),
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
