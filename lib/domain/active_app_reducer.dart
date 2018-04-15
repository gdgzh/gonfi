import 'package:gonfi/domain/active_page_actions.dart';
import 'package:gonfi/domain/models.dart';
import 'package:redux/redux.dart';

final activePageReducer = combineReducers<ActivePage>([
  new TypedReducer<ActivePage, UpdatePageAction>(_activePageReducer),
]);

ActivePage _activePageReducer(ActivePage activeTab, UpdatePageAction action) {
  return action.activePage;
}
