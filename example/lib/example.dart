import 'package:flutter/material.dart';
import 'package:material_switch/material_switch.dart';

class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ExampleState();
}

class _ExampleState extends State<Example> {
  List<String> switchOptions = <String>['Male', 'Female'];
  String selectedSwitchOption = 'Male';
  String appTitle = 'Material Switch Demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: Column(children: <Widget>[
        Text('coba')
        // MaterialSwitch(
        //   padding: const EdgeInsets.all(5.0),
        //   margin: const EdgeInsets.all(5.0),
        //   selectedOption: selectedSwitchOption,
        //   options: switchOptions,
        //   selectedBackgroundColor: Colors.indigo,
        //   selectedTextColor: Colors.white,
        //   onSelect: (String selectedOption) {
        //     setState(() {
        //       selectedSwitchOption = selectedOption;
        //     });
        //   },
        // ),
      ]),
    );
  }
}
