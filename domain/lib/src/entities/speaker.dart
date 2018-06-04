import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/domain.dart';
import 'package:meta/meta.dart';

part 'speaker.g.dart';

abstract class Speaker implements Built<Speaker, SpeakerBuilder> {
  Speaker._();
  String get name;
  String get lastName;
  String get imageUri;
  String get about;

  @nullable
  BuiltList<Skill> get skills;
  @nullable
  BuiltList<Tags> get tags;
  Address get address;
  Company get company;

  @nullable
  BuiltList<Session> get sessions;

  @nullable
  BuiltList<SocialMediaProfile> get socialMediaProfiles;

  factory Speaker([updates(SpeakerBuilder b)]) = _$Speaker;

  static Serializer<Speaker> get serializer => _$speakerSerializer;
}

@immutable
class SocialMediaProfile {}

@immutable
class Tags {
  final String name;
  final String url;

  const Tags({@required this.name, @required this.url});

  static const gde = const Tags(
      name: "GDE", url: "https://developers.google.com/experts/about");

  static const gdg = const Tags(
      name: "GDG",
      url: "https://developers.google.com/programs/community/gdg/");

  static const wtm =
      const Tags(name: "WTM", url: "https://www.womentechmakers.com/");
}
