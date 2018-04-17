import 'package:gonfi/app/active_page.dart';
import 'package:gonfi/app/active_page_actions.dart';
import 'package:redux/redux.dart';

final activePageReducer = combineReducers<ActivePage>([
  new TypedReducer<ActivePage, UpdatePageAction>(_activePageReducer),
]);

ActivePage _activePageReducer(ActivePage activeTab, UpdatePageAction action) {
  return action.activePage;
}
