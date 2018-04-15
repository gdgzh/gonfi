import 'package:gonfi/domain/models.dart';
import 'package:gonfi/pages/session/session_actions.dart';
import 'package:redux/redux.dart';

final sessionReducer = combineReducers<List<Session>>([
  new TypedReducer<List<Session>, LoadSessionsAction>(_loadSessions),
]);

List<Session> _loadSessions(List<Session> state, LoadSessionsAction action) {
  return _mockedSessions();
}

List<Session> _mockedSessions() {
  return [
    new Session(
      title: "Flutter",
      description:
          "This is session 1. Be ready to hear something about Flutter",
      speakers: [
        new Speaker(
            name: "Renato",
            lastName: "Stauffer",
            company: new Company(
                name: "ti&m",
                url: null,
                imageUri: null,
                address: new Address(city: "Zürich", country: "Switzerland")),
            imageUri:
                "https://pbs.twimg.com/profile_images/982741643995566080/YIpL7UYE_400x400.jpg",
            address: new Address(city: "Zürich", country: "Switzerland"))
      ],
      topic: "Flutter",
      room: new Room(number: "A3"),
      language: "English",
      sessionLevel: SessionLevel.Beginner,
      date: new DateTime(1989, 11, 9),
      tags: ["Flutter", "Mobile"],
    ),
    new Session(
      title: "Flutter",
      description:
          "This is session 1. Be ready to hear something about Flutter",
      speakers: [
        new Speaker(
            name: "Renato",
            lastName: "Stauffer",
            company: new Company(
                name: "ti&m",
                url: null,
                imageUri: null,
                address: new Address(city: "Zürich", country: "Switzerland")),
            imageUri:
                "https://pbs.twimg.com/profile_images/982741643995566080/YIpL7UYE_400x400.jpg",
            address: new Address(city: "Zürich", country: "Switzerland"))
      ],
      topic: "Flutter",
      room: new Room(number: "A3"),
      language: "English",
      sessionLevel: SessionLevel.Beginner,
      date: new DateTime(1989, 11, 9),
      tags: ["Flutter", "Mobile"],
    ),
    new Session(
      title: "Flutter",
      description:
          "This is session 1. Be ready to hear something about Flutter",
      speakers: [
        new Speaker(
            name: "Renato",
            lastName: "Stauffer",
            company: new Company(
                name: "ti&m",
                url: null,
                imageUri: null,
                address: new Address(city: "Zürich", country: "Switzerland")),
            imageUri:
                "https://pbs.twimg.com/profile_images/982741643995566080/YIpL7UYE_400x400.jpg",
            address: new Address(city: "Zürich", country: "Switzerland"))
      ],
      topic: "Flutter",
      room: new Room(number: "A3"),
      language: "English",
      sessionLevel: SessionLevel.Beginner,
      date: new DateTime(1989, 11, 9),
      tags: ["Flutter", "Mobile"],
    ),
  ];
}
