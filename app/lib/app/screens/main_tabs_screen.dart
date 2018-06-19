import 'package:flutter/material.dart';

class MainTabScreen extends StatelessWidget {
  MainTabScreen();

  @override
  Widget build(BuildContext context) {
    return Text("NO MainTabsContainer");
    /*MainTabsContainer(
      builder: (BuildContext context, ActivePage activePage) {
        return new Scaffold(
          body: Text("activet Page"), //_activePageContent(activePage),
          bottomNavigationBar: Text("No Navigation yet"), //new TabSelector(),
        );
      },
    );
  }*/
  }

/*Widget _activePageContent(ActivePage activePage) {
  switch (activePage) {
    case ActivePage.sessions:
      return null; //SessionListContainer();
    case ActivePage.speakers:
      return null; //SpeakersPage();
  }
}*/
}
