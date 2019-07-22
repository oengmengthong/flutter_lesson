import 'package:flutter/material.dart';

class SwipeToDismiss extends StatefulWidget {
  SwipeToDismiss({Key key}) : super(key: key);

  @override
  MySwipeToDismiss createState() {
    // TODO: implement createState
    return MySwipeToDismiss();
  }
}

class MySwipeToDismiss extends State<SwipeToDismiss> {
  final items = List<String>.generate(100, (i) => 'item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Swipe To Dismiss'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.pageview),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodeViewSwipeDismiss(),
                  ),
                );
              }),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            background: Container(
              child: Icon(Icons.delete_forever),
              color: Colors.red,
            ),
            child: ListTile(title: Text('$item')),
          );
        },
      ),
    );
  }
}

class CodeViewSwipeDismiss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('Swipe To Dismiss'),
        ),
      ),
    );
  }
}
