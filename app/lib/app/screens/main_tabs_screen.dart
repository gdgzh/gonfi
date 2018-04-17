import 'package:flutter/material.dart';
import 'package:gonfi/app/active_page.dart';
import 'package:gonfi/app/containers/main_tabs_container.dart';
import 'package:gonfi/app/containers/tab_selector.dart';
import 'package:gonfi/pages/session/session_list_container.dart';
import 'package:gonfi/pages/speaker/speaker_page.dart';

class MainTabScreen extends StatelessWidget {
  MainTabScreen();

  @override
  Widget build(BuildContext context) {
    return new MainTabsContainer(
      builder: (BuildContext context, ActivePage activePage) {
        return new Scaffold(
          body: _activePageContent(activePage),
          bottomNavigationBar: new TabSelector(),
        );
      },
    );
  }
}

Widget _activePageContent(ActivePage activePage) {
  switch (activePage) {
    case ActivePage.sessions:
      return SessionListContainer();
    case ActivePage.speakers:
      return SpeakersPage();
  }
}
