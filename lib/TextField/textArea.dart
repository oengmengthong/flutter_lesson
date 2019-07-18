import 'package:flutter/material.dart';

class TextFieldArea extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Text Field Area'),
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
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Text Area',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
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
                    Image.asset('images/fieldtextarea.png'),
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
