import 'package:flutter/material.dart';

class ExpansionTileEX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
          child: Text('ExpansionTile'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.pageview),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewCodeExpansion(),
                  ),
                );
              }),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

class ViewCodeExpansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ExpansionTile'),
        ),
      ),
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;

  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'List A',
    <Entry>[
      Entry(
        'Sub A',
        <Entry>[
          Entry('1'),
          Entry('2'),
          Entry('3'),
        ],
      ),
      Entry('Sub B'),
      Entry('Sub C'),
    ],
  ),
  Entry(
    'List B',
    <Entry>[
      Entry('Sub A'),
      Entry('Sub B'),
      Entry('Sub C'),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
