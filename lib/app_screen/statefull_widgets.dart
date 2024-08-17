import 'package:flutter/material.dart';

class StatefullWidgets extends StatefulWidget {
  const StatefullWidgets({super.key});
  @override
  State<StatefullWidgets> createState() => States();
}

class States extends State<StatefullWidgets> {
  String? nameCity, changeName;
  int? number, changeNumber;
  var items = ['Rupees', 'Dollars', 'Pounds'];
  var _currentValur = 'Rupees';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StateFull Widget'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  onSubmitted: (value) {
                    setState(() {
                      nameCity = value;
                    });
                  },
                  onChanged: (values) {
                    setState(() {
                      changeName = values;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Your best city $nameCity',
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Your best city $changeName',
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
                DropdownButton(
                  items: items.map((String dropDownStringItem) {
                    return DropdownMenuItem(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem));
                  }).toList(),
                  onChanged: (value) {
                    _onDropDownItemSelected(value!);
                  },
                  value: _currentValur,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String value) {
    setState(() {
      _currentValur = value;
    });
  }
}
