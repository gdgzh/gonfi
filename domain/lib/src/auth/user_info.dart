import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info.g.dart';

abstract class UserInfo implements Built<UserInfo, UserInfoBuilder> {
  UserInfo._();

  /// The provider identifier.
  String get providerId;

  /// The provider’s user ID for the user.
  String get uid;

  /// The name of the user.
  String get displayName;

  /// The URL of the user’s profile photo.
  String get photoUrl;

  /// The user’s email address.
  String get email;

  factory UserInfo([updates(UserInfoBuilder b)]) = _$UserInfo;

  static Serializer<UserInfo> get serializer => _$userInfoSerializer;
}
