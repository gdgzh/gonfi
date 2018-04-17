import 'package:built_collection/built_collection.dart';
import 'package:gonfi/pages/session/session_actions.dart';
import 'package:gonfi_domain/models.dart';
import 'package:redux/redux.dart';

final sessionReducer = combineReducers<List<Session>>([
  new TypedReducer<List<Session>, LoadSessionsAction>(_loadSessions),
]);

List<Session> _loadSessions(List<Session> state, LoadSessionsAction action) {
  return _mockedSessions();
}

List<Session> _mockedSessions() {
  final roomBuilder = RoomBuilder()..number = "A4";

  final addresBuilder = AddressBuilder()
    ..street = "Habsburgstrasse 2"
    ..state = "Zürich"
    ..city = "Zürich";

  final companyBuilder = CompanyBuilder()
    ..name = "ti&m"
    ..address = addresBuilder;

  final speakersBuilder = SpeakerBuilder()
    ..name = "Renato"
    ..lastName = "Stauffer"
    ..imageUri =
        "https://pbs.twimg.com/profile_images/982741643995566080/YIpL7UYE_400x400.jpg"
    ..company = companyBuilder;

  ListBuilder bu = new ListBuilder<Speaker>();
  bu.add(speakersBuilder.build());

  return [
    new Session((b) => b
      ..topic = "Flutter"
      ..date = DateTime.now()
      ..sessionLevel = SessionLevel.Beginner
      ..language = "English"
      ..room = roomBuilder
      ..speakers = bu),
    new Session((b) => b
      ..topic = "Flutter"
      ..date = DateTime.now()
      ..sessionLevel = SessionLevel.Beginner
      ..language = "English"
      ..room = roomBuilder
      ..speakers = bu),
    new Session((b) => b
      ..topic = "Flutter"
      ..date = DateTime.now()
      ..sessionLevel = SessionLevel.Beginner
      ..language = "English"
      ..room = roomBuilder
      ..speakers = bu),
    new Session((b) => b
      ..topic = "Flutter"
      ..date = DateTime.now()
      ..sessionLevel = SessionLevel.Beginner
      ..language = "English"
      ..room = roomBuilder
      ..speakers = bu),
  ];
}
