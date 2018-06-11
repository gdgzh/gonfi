import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final List<Speaker> speakers;
  final List<Session> sessions;
  final ActivePage activePage;

  AppState(
      {this.speakers = const [],
      this.sessions = const [],
      this.activePage = ActivePage.sessions});

  AppState copyWith({
    List<Speaker> speakers,
  }) {
    return new AppState(
      speakers: speakers ?? this.speakers,
    );
  }

  AppState copyWithSession({
    @required Session session,
  }) {
    return new AppState(
      speakers: this.speakers,
      sessions: session ?? this.sessions,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          speakers == other.speakers &&
          sessions == other.sessions;

  @override
  int get hashCode => speakers.hashCode ^ sessions.hashCode;

  @override
  String toString() {
    return 'AppState{speakers: $speakers, sessions: $sessions}';
  }
}
