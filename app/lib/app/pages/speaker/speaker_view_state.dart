import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

@immutable
class SpeakerViewState {
  final String _DOT = "\u2022";
  final String displayName;
  final String country;
  final List<Tags> tags;
  final String companyImageUrl;
  final List<Skill> skills;

  SpeakerViewState._internal({
    this.displayName,
    this.country,
    this.tags,
    this.companyImageUrl,
    this.skills,
  });

  factory SpeakerViewState.fromEntity(Speaker speaker) {
    return new SpeakerViewState._internal(
      displayName: '${speaker.name} ${speaker.lastName}',
      country: '${speaker.address?.city}, ${speaker.address?.country}',
      companyImageUrl: speaker?.company?.imageUri ?? '',
      skills: speaker.skills ?? [],
      tags: speaker.tags ?? [],
    );
  }
}
