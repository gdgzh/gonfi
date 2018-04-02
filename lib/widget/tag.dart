import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class Tag extends StatelessWidget {
  Tag({Key key, @required this.color, @required this.text}) : super(key: key);

  final String text;
  final Color color;
  final TextStyle _tagStyle =
      new TextStyle(fontSize: 12.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0),
      decoration: new BoxDecoration(
        color: this.color,
        borderRadius: const BorderRadius.all(
          const Radius.circular(2.0),
        ),
      ),
      child: new Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 1.0, 4.0, 1.0),
        child: new Text(
          this.text,
          style: _tagStyle,
        ),
      ),
    );
  }
}
