import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Text Field Password'),
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
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red,)
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
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
                    Image.asset('images/fieldpassword.png'),
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
