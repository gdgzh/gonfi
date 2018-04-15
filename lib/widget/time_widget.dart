import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

class TimeWidget extends StatelessWidget {
  final String timeHours;
  final String timeMinutes;

  TimeWidget({@required DateTime date})
      : timeHours = new DateFormat("hh").format(date),
        timeMinutes = new DateFormat("mm").format(date);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(this.timeHours,
                style: Theme.of(context).textTheme.display3),
            new Padding(
              padding: const EdgeInsets.only(left: 2.0, bottom: 10.0),
              child: new Text(this.timeMinutes,
                  style: Theme.of(context).textTheme.subhead),
            ),
          ],
        ),
      ),
    );
  }
}
