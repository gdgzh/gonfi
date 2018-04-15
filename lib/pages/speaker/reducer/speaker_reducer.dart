import 'package:gonfi/domain/models.dart';
import 'package:gonfi/pages/speaker/speaker_actions.dart';
import 'package:redux/redux.dart';

List<Speaker> loadReducer(List<Speaker> speakers, LoadSpeakersAction action) {
  return createSpeaker();
}

List<Speaker> createSpeaker() {
  return [
    new Speaker(
        name: "Silvia",
        lastName: "Nesculescu",
        imageUri: "https://devfest.ch/images/people/slivia_nesculescu.jpg",
        address: new Address(city: "Barcelona", country: "Spain"),
        company: new Company(
            name: "séntisis",
            url: null,
            imageUri: "https://devfest.ch/images/logos/sentisis.svg"),
        skills: [const Skill(name: "ML", color: 0x006064)],
        about:
            "Silvia Necsulescu, PhD., passionate about algorithms and foreign languages, got a PhD in Natural Language Processing from UPF Barcelona. She works as Data Scientist using Machine Learning and Deep Learning tools for natural language understanding tasks.",
        socialMediaProfiles: [],
        sessions: []),
    new Speaker(
        name: "Martin",
        lastName: "Splitt",
        imageUri: "https://devfest.ch/images/people/martin_splitt.jpg",
        address: new Address(city: "Zürich", country: "Switzerland"),
        company: new Company(
            name: "Archilogic",
            url: null,
            imageUri: "https://devfest.ch/images/logos/archilogic.png"),
        skills: [const Skill(name: "VRAR", color: 0xbdbdbd)],
        about:
            "Martin is pretty decent at humaning and pretty good at computering.",
        socialMediaProfiles: [],
        sessions: []),
    new Speaker(
        name: "Andreea",
        lastName: "Hossmann",
        imageUri: "https://devfest.ch/images/people/andreea_hossmann.jpg",
        address: new Address(city: "Zürich", country: "Switzerland"),
        company: new Company(
            name: "Swisscom",
            url: null,
            imageUri: "https://devfest.ch/images/logos/Swisscom.png"),
        skills: [const Skill(name: "ML", color: 0x006064)],
        about:
            "Andreea is leading a team of data scientists at Swisscom, currently working on search, text analytics and speech recognition.",
        socialMediaProfiles: [],
        sessions: []),
    new Speaker(
        name: "Hasan",
        lastName: "Nesculescu",
        imageUri: "https://2016.devfest.ch/images/people/hasan_hosgel.jpg",
        address: new Address(city: "Berlin", country: "Germany"),
        company: new Company(
            name: "Immobilien Scout 24",
            url: null,
            imageUri: "https://2016.devfest.ch/images/logos/immo_scout_24.png"),
        skills: [const Skill(name: "ML", color: 0x006064)],
        about:
            "Hasan Hoşgel is a dedicated Android developer with over fiveteen years of professional programming experience.",
        socialMediaProfiles: [],
        sessions: []),
  ];
}

final speakerReducer = combineReducers<List<Speaker>>([
  new TypedReducer<List<Speaker>, LoadSpeakersAction>(loadReducer),
]);
