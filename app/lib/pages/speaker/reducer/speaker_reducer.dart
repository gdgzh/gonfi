import 'package:gonfi/pages/speaker/speaker_actions.dart';
import 'package:gonfi_domain/models.dart';
import 'package:redux/redux.dart';

List<Speaker> loadReducer(List<Speaker> speakers, LoadSpeakersAction action) {
  return createSpeaker();
}

List<Speaker> createSpeaker() {
  final addressBuilder = new AddressBuilder()
    ..street = 'Street 1'
    ..zip = '1234'
    ..state = 'State';
  return [
    new Speaker(
      (b) => b
        ..name = "Silvia"
        ..lastName = "Nesculescu"
        ..imageUri = "https://devfest.ch/images/people/slivia_nesculescu.jpg"
        ..address = addressBuilder
        ..address.update((b) => b
          ..city = 'Barcelona'
          ..country = 'Spain')
        ..company.name = "séntisis"
        ..company.url = ""
        ..company.imageUri = "https://devfest.ch/images/logos/sentisis.svg"
        //..skills =  [const Skill(name: "ML", color: 0x006064)],
        ..about =
            "Silvia Necsulescu, PhD., passionate about algorithms and foreign languages, got a PhD in Natural Language Processing from UPF Barcelona. She works as Data Scientist using Machine Learning and Deep Learning tools for natural language understanding tasks.",
    ),
    new Speaker(
      (b) => b
        ..name = "Martin"
        ..lastName = "Splitt"
        ..imageUri = "https://devfest.ch/images/people/martin_splitt.jpg"
        ..address = addressBuilder
        ..address.update((b) => b
          ..city = "Zürich"
          ..country = "Switzerland")
        ..company.name = "Archilogic"
        ..company.url = ""
        ..company.imageUri = "https://devfest.ch/images/logos/archilogic.png"
        //..skills =  [const Skill(name: "VRAR", color: 0xbdbdbd)],,
        ..about =
            "Martin is pretty decent at humaning and pretty good at computering.",
    ),
    new Speaker(
      (b) => b
        ..name = "Andreea"
        ..lastName = "Hossmann"
        ..imageUri = "https://devfest.ch/images/people/andreea_hossmann.jpg"
        ..address = addressBuilder
        ..address.update((b) => b
          ..city = "Zürich"
          ..country = "Switzerland")
        ..company.name = "Swisscom"
        ..company.url = ""
        ..company.imageUri = "https://devfest.ch/images/logos/Swisscom.png"
        //..skills =  [const Skill(name: "ML", color: 0x006064)],
        ..about =
            "Andreea is leading a team of data scientists at Swisscom, currently working on search, text analytics and speech recognition.",
    ),
    new Speaker(
      (b) => b
        ..name = "Hasan"
        ..lastName = "Nesculescu"
        ..imageUri = "https://2016.devfest.ch/images/people/hasan_hosgel.jpg"
        ..address = addressBuilder
        ..address.update((b) => b
          ..city = "Berlin"
          ..country = "Germany")
        ..company.name = "Immobilien Scout 24"
        ..company.url = ""
        ..company.imageUri =
            "https://2016.devfest.ch/images/logos/immo_scout_24.png"
        //..skills =  [const Skill(name: "ML", color: 0x006064)],
        ..about =
            "Hasan Hoşgel is a dedicated Android developer with over fiveteen years of professional programming experience.",
    ),
  ];
}

final speakerReducer = combineReducers<List<Speaker>>([
  new TypedReducer<List<Speaker>, LoadSpeakersAction>(loadReducer),
]);
