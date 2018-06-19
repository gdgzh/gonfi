import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/domain.dart';

part 'company.g.dart';

abstract class Company implements Built<Company, CompanyBuilder> {
  Company._();
  String get name;
  @nullable
  String get imageUri;
  @nullable
  String get url;
  @nullable
  Address get address;

  factory Company([updates(CompanyBuilder b)]) = _$Company;

  static Serializer<Company> get serializer => _$companySerializer;
}
