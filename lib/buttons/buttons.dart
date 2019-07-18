import 'package:flutter/material.dart';
import 'package:flutter_lesson/buttons/report.dart';

import 'add.dart';
import 'clock.dart';
import 'flower.dart';
import 'food.dart';
import 'goal.dart';
import 'map.dart';
import 'public.dart';

class ButtonFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text(
            'Buttons Flutter',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'For FlatButton & RadioButton need to use inside\n'
                      'ButtonTheme for set height. But i recommend to use\n'
                      'MaterialButton. MaterialButton can custome more style.',
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'FlatButton',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReportButton(),),);
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('RadioButton'),
                SizedBox(
                  width: 20,
                ),
                ButtonTheme(
                  height: 35,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.map,
                          color: Colors.green[100],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Map'),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>MapButton(),),);
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Materail Button'),
                SizedBox(
                  width: 20,
                ),
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>FlowerButton(),),);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Style Outline'),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  color: Colors.yellow,
                  shape: OutlineInputBorder(),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_alarm,
                        color: Colors.deepPurple[100],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Clock'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ClockButton(),),);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Style Underline'),
                SizedBox(
                  width: 20,
                ),
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>FoodButton(),),);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Style Border'),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  shape: Border.all(width: 2, color: Colors.red),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.golf_course),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Goal')
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GoalButton(),),);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Style Rectangle'),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.lightGreenAccent,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.public),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Public')
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PublicButton(),),);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Style Circle'),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddButton(),),);
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Click On Each Button For View Code.')
          ],
        ),
      ),
    );
  }
}

