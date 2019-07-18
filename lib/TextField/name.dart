import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Text Field Name'),
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
                TextField(
                  maxLength: 20,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Name",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
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
                    Image.asset('images/fieldname.png'),
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
