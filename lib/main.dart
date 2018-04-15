import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gonfi/app/app_redux.dart';
import 'package:gonfi/app/routes.dart';
import 'package:gonfi/app/screens/main_tabs_screen.dart';
import 'package:gonfi/app/theme.dart';
import 'package:gonfi/pages/session/session_list_container.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final store = new Store<AppState>(appReducer, initialState: new AppState());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: GonfiThemeData,
        home: new MainTabScreen(),
        routes: {
          GonfiRoutes.speakers: (BuildContext context) {
            // TODO: Add Speakers here...
            return new StoreBuilder<AppState>(
                builder: (BuildContext context, Store<AppState> store) {
              return new SessionListContainer();
            });
          },
          GonfiRoutes.sessions: (BuildContext context) {
            return new StoreBuilder<AppState>(
                builder: (BuildContext context, Store<AppState> store) {
              return new SessionListContainer();
            });
          },
        },
      ),
    );
  }
}
