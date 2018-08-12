import 'package:flutter/material.dart';
import 'package:material_switch/material_switch.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => new _ExampleState();
}

class _ExampleState extends State<Example> {
  List<String> switchOptions = ["Male", "Female"];
  String selectedSwitchOption = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Switch Demo"),
      ),
      body: Column(children: <Widget>[
        MaterialSwitch(
            selectedOption: selectedSwitchOption,
            options: switchOptions,
            selectedBackgroundColor: Colors.indigo,
            selectedTextColor: Colors.white,
            onSelect: (selectedOption) {
              setState(() {
                selectedSwitchOption = selectedOption;
              });
            }),
      ]),
    );
  }
}
