import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
//  const ReportButton([String sourceFile = 'lib/buttons/report.dart'])
//      : super(sourceFile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Text Field Email'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2,
                          ),
                        ),
                        prefixText: '',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        suffixText: 'Email',
                        suffixStyle: TextStyle(
                          color: Colors.red,
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                        ),
                        hintText: 'example@email.com',
                        hintStyle: TextStyle(color: Colors.red),
                        helperText: 'Please Input Your Email.',
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(),
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
                        Image.asset('images/fieldemail.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
