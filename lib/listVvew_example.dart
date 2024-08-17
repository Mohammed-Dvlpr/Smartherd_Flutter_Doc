import 'package:flutter/material.dart';

class ListvvewExample extends StatelessWidget {
  const ListvvewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Column(
        children: [
          Expanded(child: getListView()),
          Container(
            height: 4,
            color: Colors.amberAccent,
          ),
          Expanded(child: simpleList()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(content: Text("aehfr"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<String> getListElement() {
  var items = List<String>.generate(50, (counter) => 'Item $counter');
  return items;
}

Widget getListView() {
  var listItems = getListElement();
  var listView = ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.subdirectory_arrow_right_sharp),
          title: Text(listItems[index]),
        );
      });
  return listView;
}

Widget simpleList() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.subdirectory_arrow_right_sharp),
        title: Text('Landscape'),
        subtitle: Text('Beautifull'),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(leading: Icon(Icons.laptop_chromebook), title: Text('Welcome')),
      ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
      Container(
        height: 10,
        color: Colors.black,
      )
    ],
  );
  return listView;
}
