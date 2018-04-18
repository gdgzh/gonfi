import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gonfi/app/active_page.dart';
import 'package:gonfi/app/active_page_actions.dart';
import 'package:gonfi/app/app_redux.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class TabSelector extends StatelessWidget {
  TabSelector();

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return new BottomNavigationBar(
          currentIndex: ActivePage.values.indexOf(vm.activeTab),
          onTap: vm.onTabSelected,
          items: ActivePage.values.map((tab) {
            return new BottomNavigationBarItem(
                icon: _iconForActivePage(tab),
                title: new Text(_titleForActivePage(tab)));
          }).toList(),
        );
      },
    );
  }

  String _titleForActivePage(ActivePage page) {
    switch (page) {
      case ActivePage.sessions:
        return "Sessions";
      case ActivePage.speakers:
        return "Speakers";
      case ActivePage.team:
        return "Team";
    }
  }

  Widget _iconForActivePage(ActivePage page) {
    switch (page) {
      case ActivePage.team:
        return Icon(Icons.add);
      case ActivePage.speakers:
        return Icon(Icons.list);
      case ActivePage.sessions:
        return Icon(Icons.show_chart);
    }
  }
}

class _ViewModel {
  final ActivePage activeTab;
  final Function(int) onTabSelected;

  _ViewModel({
    @required this.activeTab,
    @required this.onTabSelected,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(
      activeTab: store.state.activePage,
      onTabSelected: (index) {
        store.dispatch(new UpdatePageAction((ActivePage.values[index])));
      },
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          activeTab == other.activeTab;

  @override
  int get hashCode => activeTab.hashCode;
}
