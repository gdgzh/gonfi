import 'package:gonfi/domain/models.dart';
import 'package:meta/meta.dart';

@immutable
class SpeakerViewState {
  final String _DOT = "\u2022";
  final String displayName;
  final String country;
  final String tags;
  final String companyImageUrl;
  final List<Skill> skills;

  SpeakerViewState._internal({this.displayName, this.country});

  factory SpeakerViewState.fromEntity(Speaker speaker) {
    return new SpeakerViewState._internal(
        displayName: '${speaker.name} ${speaker.lastName}',
        country: '${speaker.address?.city} , ${speaker.address?.country}');
  }
}
