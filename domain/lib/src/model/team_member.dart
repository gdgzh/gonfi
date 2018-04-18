import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';

part 'team_member.g.dart';

abstract class TeamMember implements Built<TeamMember, TeamMemberBuilder> {
  TeamMember._();
  String get name;
  String get lastName;
  @nullable
  String get role;
  @nullable
  String get imageUri;
  @nullable
  String get about;
  @nullable
  BuiltList<Tags> get tags;
  @nullable
  Address get address;
  @nullable
  Company get company;
  @nullable
  BuiltList<SocialMediaProfile> get socialMediaProfiles;

  factory TeamMember([updates(TeamMemberBuilder b)]) = _$TeamMember;

  static Serializer<TeamMember> get serializer => _$teamMemberSerializer;
}
