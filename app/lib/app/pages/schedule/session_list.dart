import 'package:flutter/material.dart';

import 'session_tile.dart';

class SessionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int add = 0;
    var lastTime = "";
    final sessions = List<Widget>.generate(30, (int index) {
      var time = "${9+add}:00";
      if (index % 3 == 0) add++;
      var sessionTile = SessionTile(
        title: "Registration ${index+1}",
        time: time,
        hideTime: time == lastTime,
        subTitle: "1.5 hours / Bla",
        onTap: () {},
      );
      print("Should hide time : $lastTime == $time = ${time == lastTime}");
      lastTime = time;
      return sessionTile;
    });
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: ListView(
        controller: ScrollController(),
        children: sessions,
      ),
    );
  }
}
