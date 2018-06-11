import 'package:flutter/material.dart';
import 'package:gonfi/pages/session/session_list_item.dart';
import 'package:gonfi_domain/models.dart';
import 'package:meta/meta.dart';

class SessionListScreen extends StatelessWidget {
  final List<Session> sessions;

  SessionListScreen({@required this.sessions}) : assert(sessions != null);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("List")),
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new ListView.builder(
            itemCount: this.sessions.length,
            itemBuilder: (BuildContext context, int index) {
              return new SessionListItem(session: this.sessions[index]);
            }),
      ),
    );
  }
}
