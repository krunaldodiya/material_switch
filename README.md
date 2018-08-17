# material_switch

A new Flutter package for both android and iOS which helps developers in creating material switch widget using button.

## Show some :heart: and star the repo to support the project

## Screenshots

![Material Switch](https://u.imageresize.org/v2/0628f470-a17c-41cb-b79d-5c8ad95cc11a.png)

## Usage

[Example](https://github.com/kunaldodiya/material_switch/blob/master/example/example.dart)

To use this package :

- add the dependency to your [pubspec.yaml](https://github.com/kunaldodiya/material_switch/blob/master/pubspec.yaml) file.

```yaml
dependencies:
  flutter:
    sdk: flutter

material_switch: ^0.0.5:
```

### How to use

```dart
import 'package:material_switch/material_switch.dart';

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
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(5.0),
          selectedOption: selectedSwitchOption,
          options: switchOptions,
          selectedBackgroundColor: Colors.indigo,
          selectedTextColor: Colors.white,
          onSelect: (String selectedOption) {
            setState(() {
              selectedSwitchOption = selectedOption;
            });
          },
        ),
      ]),
    );
  }
```

### Pull Requests

I welcome and encourage all pull requests. It usually will take me within 24-48 hours to respond to any issue or request. Here are some basic rules to follow to ensure timely addition of your request:

1. Match coding style (braces, spacing, etc.) This is best achieved using `Reformat Code` feature of Android Studio `CMD`+`Option`+`L` on Mac and `CTRL` + `ALT` + `L` on Linux + Windows .
2. If its a feature, bugfix, or anything please only change code to what you specify.
3. Please keep PR titles easy to read and descriptive of changes, this will make them easier to merge :)
4. Pull requests _must_ be made against `develop` branch. Any other branch (unless specified by the maintainers) will get rejected.
5. Check for existing [issues](https://github.com/kunaldodiya/material_switch/issues) first, before filing an issue.
6. Make sure you follow the set standard as all other projects in this repo do
7. Have fun!

### Created & Maintained By

Github - [Krunal Dodiya](https://github.com/kunaldodiya)
Twitter - [@kunaldodiya](https://www.twitter.com/mrkunaldodiya)

> If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of :coffee:
>
> - [PayPal](https://paypal.me/krunaldodiya)

## License

    Copyright 2018 Krunal dodiya <kunal.dodiya1@gmail.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
