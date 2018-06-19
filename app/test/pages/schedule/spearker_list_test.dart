import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gonfi/app/pages/schedule/session_list.dart';
import 'package:gonfi/app/pages/schedule/session_view_model.dart';

void main() {
  int add = 0;
  final sessions = List<SessionViewModel>.generate(30, (int index) {
    if (index % 3 == 0) add++;
    return SessionViewModel(
      title: "Registration ${index+1}",
      time: "${7+add}:00",
      subTitle: "1.5 hours / Bla",
    );
  });
  testWidgets('SpeakerPage tests', (WidgetTester tester) async {
    await tester.pumpWidget(StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return MaterialApp(
          home: SessionList(
            sessionViewModels: sessions,
          ),
        );
      },
    ));
  });
}
