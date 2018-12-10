library material_switch;

import 'package:flutter/material.dart';

class MaterialSwitch extends StatefulWidget {
  const MaterialSwitch({
    Key key,
    @required this.options,
    this.onSelect,
    this.selectedBackgroundColor,
    this.selectedTextColor,
    this.margin,
    this.style,
    this.padding,
    this.elevation
  }) : super(key: key);

  final List<String> options;
  final ValueChanged<int> onSelect;
  final Color selectedBackgroundColor;
  final Color selectedTextColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final TextStyle style;
  final double elevation;
  


  @override
  _MaterialSwitchState createState() => new _MaterialSwitchState();
}

class _MaterialSwitchState extends State<MaterialSwitch> {
  int _pos = 0;


  void _onTap(int pos) {
    setState(() {
      _pos = pos;
    });
    widget.onSelect(_pos);
  }
  
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      margin: widget.margin,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: widget.padding,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              textColor: _pos == 0 ? widget.selectedTextColor : _theme.textTheme.body1.color,
              splashColor: _pos == 0 ? widget.selectedBackgroundColor : _theme.splashColor,
              color: _pos  == 0 ? widget.selectedBackgroundColor : _theme.buttonColor,
              highlightColor: _pos == 0 ? widget.selectedBackgroundColor : _theme.highlightColor,
              child: Container(
                alignment: Alignment.center,
                child: Text(widget.options[0], style: widget.style,),
              ),
              elevation: widget.elevation,
              onPressed: () {
                _onTap(0);
              },
            ),
          ),
          Expanded(
            child: RaisedButton(
              padding: widget.padding,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              textColor: _pos == 1 ? widget.selectedTextColor : _theme.textTheme.body1.color,
              splashColor: _pos == 1 ? widget.selectedBackgroundColor : _theme.splashColor,
              color: _pos == 1 ? widget.selectedBackgroundColor : _theme.buttonColor,
              highlightColor: _pos == 1 ? widget.selectedBackgroundColor : _theme.highlightColor,
              child: Container(
                alignment: Alignment.center,
                child: Text(widget.options[1], style: widget.style),
              ),
              elevation: widget.elevation,
              onPressed: () {
                _onTap(1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
