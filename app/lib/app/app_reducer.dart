import 'package:gonfi/app/active_app_reducer.dart';
import 'package:gonfi/pages/session/reducer/session_reducer.dart';
import 'package:gonfi/pages/speaker/reducer/speaker_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    speakers: speakerReducer(state.speakers, action),
    sessions: sessionReducer(state.sessions, action),
    activePage: activePageReducer(state.activePage, action),
  );
}
