import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gonfi/app/active_page.dart';
import 'package:gonfi/app/app_state.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class MainTabsContainer extends StatelessWidget {
  final ViewModelBuilder<ActivePage> builder;

  MainTabsContainer({Key key, @required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, ActivePage>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.activePage,
      builder: builder,
    );
  }
}
