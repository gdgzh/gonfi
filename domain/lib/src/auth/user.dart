import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/domain.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  UserInfo get userInfo;
  @nullable
  Set<Session> get favoriteSessions;

  factory User([updates(UserBuilder builder)]) = _$User;
  static Serializer<User> get serializer => _$userSerializer;
}

/*abstract class UserBuilder extends Builder<User, UserBuilder> {
  @virtual
  UserInfo userInfo;


}*/
