import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company.g.dart';

abstract class Company implements Built<Company, CompanyBuilder> {
  Company._();

  String get name;
  String get imageUri;
  @nullable
  String get url;

  factory Company([updates(CompanyBuilder b)]) = _$Company;

  static Serializer<Company> get serializer => _$companySerializer;
}
