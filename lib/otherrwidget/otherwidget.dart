import 'package:flutter/material.dart';

class OtherWidgetFlutter extends StatefulWidget {
  @override
  AllWidget createState() {
    // TODO: implement createState
    return AllWidget();
  }
}

class AllWidget extends State<OtherWidgetFlutter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Other Widget'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Calender'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Clock'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Camera'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Pick Image File'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Record Voice'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Play Video'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Play Music'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Record Video'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Google Map'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Camera'),
                    MaterialButton(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.lightBlueAccent,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.remove_red_eye, color: Colors.white,),
                            SizedBox(
                              width: 5,
                            ),
                            Text('VIEW', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
