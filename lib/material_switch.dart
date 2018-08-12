library material_switch;

import 'package:flutter/material.dart';

class MaterialSwitch extends StatefulWidget {
  @required
  final List<String> options;
  @required
  final String selectedOption;
  @required
  final Function onSelect;
  @required
  final Color selectedBackgroundColor;
  @required
  final Color selectedTextColor;

  MaterialSwitch({
    Key key,
    this.options,
    this.selectedOption,
    this.onSelect,
    this.selectedBackgroundColor,
    this.selectedTextColor,
  });

  @override
  _MaterialSwitchState createState() => new _MaterialSwitchState();
}

class _MaterialSwitchState extends State<MaterialSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(20.0, 17.5, 17.5, 17.5),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              textColor: widget.selectedOption == widget.options[0]
                  ? widget.selectedTextColor
                  : Colors.black,
              splashColor: widget.selectedOption == widget.options[0]
                  ? widget.selectedBackgroundColor
                  : Colors.white,
              color: widget.selectedOption == widget.options[0]
                  ? widget.selectedBackgroundColor
                  : Colors.white,
              highlightColor: widget.selectedOption == widget.options[0]
                  ? widget.selectedBackgroundColor
                  : Colors.white,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(widget.options[0]),
              ),
              onPressed: () => widget.onSelect(widget.options[0]),
            ),
          ),
          Expanded(
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(20.0, 17.5, 17.5, 17.5),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              textColor: widget.selectedOption == widget.options[1]
                  ? widget.selectedTextColor
                  : Colors.black,
              splashColor: widget.selectedOption == widget.options[1]
                  ? widget.selectedBackgroundColor
                  : Colors.white,
              color: widget.selectedOption == widget.options[1]
                  ? widget.selectedBackgroundColor
                  : Colors.white,
              highlightColor: widget.selectedOption == widget.options[1]
                  ? widget.selectedBackgroundColor
                  : Colors.white,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(widget.options[1]),
              ),
              onPressed: () => widget.onSelect(widget.options[1]),
            ),
          ),
        ],
      ),
    );
  }
}
