import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';
import 'package:meta/meta.dart';

part 'speaker.g.dart';

abstract class Speaker implements Built<Speaker, SpeakerBuilder> {
  Speaker._();
  String get name;
  String get lastName;
  @nullable
  String get imageUri;
  @nullable
  String get about;
  @nullable
  BuiltList<Skill> get skills;
  @nullable
  BuiltList<Tags> get tags;
  @nullable
  Address get address;
  @nullable
  Company get company;
  @nullable
  BuiltList<SocialMediaProfile> get socialMediaProfiles;

  factory Speaker([updates(SpeakerBuilder b)]) = _$Speaker;

  static Serializer<Speaker> get serializer => _$speakerSerializer;
}

@immutable
class SocialMediaProfile extends EnumClass {
  static Serializer<SocialMediaProfile> get serializer =>
      _$socialMediaProfileSerializer;

  static const SocialMediaProfile twitter = _$twitter;
  static const SocialMediaProfile facebook = _$facebook;
  static const SocialMediaProfile linkedin = _$linkedin;

  const SocialMediaProfile._(String name) : super(name);

  static BuiltSet<SocialMediaProfile> get values => _$values;
  static SocialMediaProfile valueOf(String name) => _$valueOf(name);
}

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
