import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final List<Speaker> speakers;
  AppState({this.speakers = const []});

  AppState copyWith({
    List<Speaker> speakers,
  }) {
    return new AppState(
      speakers: speakers ?? this.speakers,
    );
  }

  @override
  String toString() {
    return 'AppState{speakers: $speakers}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          speakers == other.speakers;

  @override
  int get hashCode => speakers.hashCode;
}
