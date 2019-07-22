import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FormValidator extends StatefulWidget {
  @override
  Validator createState() {
    // TODO: implement createState
    return Validator();
  }
}

class PersonData {
  String name = '';
  String phoneNumber = '';
  String email = '';
  String password = '';
}

class Validator extends State<FormValidator> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  PersonData person = PersonData();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Form Validator'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.pageview),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewCode(),
                  ),
                );
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter Your Name',
                        ),
                        validator: _validatorName,
                        onSaved: (String value) {
                          person.name = value;
                        },
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Your Email',
                        ),
                        validator: _validatorEmail,
                        onSaved: (String value) {
                          person.email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        obscureText: _obscureText,
                        keyboardType: TextInputType.text,
                        validator: _validatorPasswd,
                        onSaved: (String value) {
                          person.password = value;
                        },
                        decoration: new InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Your Password',
                          suffixIcon: GestureDetector(
                            dragStartBehavior: DragStartBehavior.down,
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              semanticLabel: _obscureText
                                  ? 'show password'
                                  : 'hide password',
                            ),
                          ),
                        ),
                      ),
                      new TextFormField(
                        validator: _validatorPhone,
                        keyboardType: TextInputType.number,
                        onSaved: (String value) {
                          person.phoneNumber = value;
                        },
                        decoration: new InputDecoration(
                          labelText: 'Phone Number',
                          hintText: 'Enter Your Phone Number',
                        ),
                      ),
                      new SizedBox(
                        height: 20,
                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              print(person.name +
                                  person.email +
                                  person.phoneNumber +
                                  person.password);
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: missing_return
  String _validatorName(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty';
    }
  }

  String _validatorEmail(String value) {
    if (value.isEmpty) {
      return 'Email cannot be empty';
    }
    String p = r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}';
    RegExp regExp = new RegExp(p);
    if (regExp.hasMatch(value)) {
      return null;
    }
    return 'Email provided isn\'t valid.Try another email address';
  }

  // ignore: missing_return
  String _validatorPasswd(String value) {
    if (value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 8) {
      return 'Password length must be greater than 8';
    }
    String reg = "[A-Z]+" + "[0-9a-zA-Z]";
    RegExp PasswordregExp = new RegExp(reg);
    if (!PasswordregExp.hasMatch(value))
      return 'Please Add UpperCase, LowerCase, Number And Sysmbl';
    return null;
  }

  String _validatorPhone(String value) {
    if (value.isEmpty) {
      return 'Phone Number cannot be empty';
    }
    final RegExp phoneExp = RegExp(r'^[()\d -]{9,15}$');
    if (!phoneExp.hasMatch(value)) return 'Enter a correct phone number.';
    return null;
  }
}

class ViewCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Form Validator'),
        ),
      ),
    );
  }
}
