<<<<<<< HEAD:lib/app/app_reducer.dart
import 'package:gonfi/app/app_state.dart';
import 'package:gonfi/domain/active_app_reducer.dart';
import 'package:gonfi/pages/session/reducer/session_reducer.dart';
import 'package:gonfi/pages/speaker/reducer/speaker_reducer.dart';
=======
import 'package:gonfi/app/redux_app/app_state.dart';
>>>>>>> feature/auth:app/lib/app/redux_app/app_reducer.dart

AppState appReducer(AppState state, action) {
  return new AppState(
    speakers: speakerReducer(state.speakers, action),
    sessions: sessionReducer(state.sessions, action),
    activePage: activePageReducer(state.activePage, action),
  );
}
