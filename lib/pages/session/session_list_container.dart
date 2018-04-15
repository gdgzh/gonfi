import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gonfi/app/app_redux.dart';
import 'package:gonfi/domain/models.dart';
import 'package:gonfi/pages/session/session_actions.dart';
import 'package:gonfi/pages/session/session_list_screen.dart';
import 'package:redux/redux.dart';

class SessionListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector(
      converter: (Store<AppState> store) {
        return new _ViewModel(sessions: store.state.sessions);
      },
      builder: (BuildContext context, _ViewModel viewModel) {
        return new SessionListScreen(sessions: viewModel.sessions);
      },
      onInit: (Store<AppState> store) {
        store.dispatch(new LoadSessionsAction());
      },
    );
  }
}

class _ViewModel {
  final List<Session> sessions;
  _ViewModel({this.sessions});
}
