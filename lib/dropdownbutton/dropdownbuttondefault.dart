import 'package:flutter/material.dart';
import 'dart:async';

class DropDownButtons extends StatefulWidget {
  @override
  DropDownButton createState() {
    // TODO: implement createState
    return DropDownButton();
  }
}

const menuItem = <String>['One', 'Two', 'Three', 'Four'];

final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItem
    .map(
      (String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          ),
    )
    .toList();

final List<PopupMenuItem<String>> _popupMenuItems = menuItem
    .map(
      (String value) => PopupMenuItem<String>(
            value: value,
            child: Text(value),
          ),
    )
    .toList();

const List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
String _color;

String _btn1SelectedVal = 'One';
String _btn2SelectedVal;
String _btn3SelectedVal;
String _value;

class DropDownButton extends State<DropDownButtons> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Center(
            child: Text('DropDownDefault'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.pageview),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewCodeDropDown(),
                  ),
                );
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('DropDownButton With Default'),
                      new DropdownButton<String>(
                        value: _btn1SelectedVal,
                        onChanged: ((String newValue) {
                          setState(() {
                            _btn1SelectedVal = newValue;
                          });
                        }),
                        items: _dropDownMenuItems,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('DropDownButton With Hint'),
                      new DropdownButton<String>(
                        value: _btn2SelectedVal,
                        hint: Text('Choose'),
                        onChanged: ((String newValue) {
                          setState(() {
                            _btn2SelectedVal = newValue;
                          });
                        }),
                        items: _dropDownMenuItems,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('PopupMenu Button'),
                      new PopupMenuButton(
                        onSelected: (String newValue) {
                          _btn3SelectedVal = newValue;
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$_btn3SelectedVal'),
                            ),
                          );
                        },
                        itemBuilder: (BuildContext context) => _popupMenuItems,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.color_lens),
                          Text('Color'),
                        ],
                      ),
                      new DropdownButton<String>(
                        value: _color,
                        isDense: true,
                        isExpanded: true,
                        onChanged: ((String newValue) {
                          setState(() {
                            _color = newValue;
                          });
                        }),
                        items: _colors.map((String value) {
                          return new DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: <Widget>[
                          new DropdownButton<String>(
                            items: [
                              DropdownMenuItem(
                                value: '1',
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(Icons.local_florist),
                                    Text('Flower'),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2",
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(Icons.build),
                                    SizedBox(width: 10),
                                    Text(
                                      "Build",
                                    ),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: "3",
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(Icons.settings),
                                    SizedBox(width: 10),
                                    Text(
                                      "Setting",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                            value: _value,
                            hint: Text('Choose'),
                            isExpanded: true,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class ViewCodeDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Drop Down'),
        ),
      ),
    );
  }
}
