import 'package:flutter/material.dart';

class ReOrderableList extends StatefulWidget {
  @override
  ReOrderList createState() {
    // TODO: implement createState
    return ReOrderList();
  }
}

class ReOrderList extends State<ReOrderableList> {
  List<String> _list = ["Apple", "Ball", "Cat", "Dog", "Elephant"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Reorder List'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.pageview),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewCodeReOrderList(),
                ),
              );
            },
          )
        ],
      ),
      body: ReorderableListView(
        children: _list
            .map(
              (item) => ListTile(
                    leading: Icon(Icons.menu),
                    key: Key("${item}"),
                    title: Text("${item}"),
                    trailing: CircleAvatar(
                      child: Icon(Icons.mouse),
                    ),
                  ),
            )
            .toList(),
        onReorder: (int start, int current) {
          // dragging from top to bottom
          if (start < current) {
            int end = current - 1;
            String startItem = _list[start];
            int i = 0;
            int local = start;
            do {
              _list[local] = _list[++local];
              i++;
            } while (i < end - start);
            _list[end] = startItem;
          }
          // dragging from bottom to top
          else if (start > current) {
            String startItem = _list[start];
            for (int i = start; i > current; i--) {
              _list[i] = _list[i - 1];
            }
            _list[current] = startItem;
          }
          setState(() {});
        },
      ),
    );
  }
}

class ViewCodeReOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ReOrder List'),
        ),
      ),
    );
  }
}
