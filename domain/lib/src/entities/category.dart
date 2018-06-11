import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category.g.dart';

abstract class Category implements Built<Category, CategoryBuilder> {
  Category._();
  String get name;
  int get color;
  @nullable
  String get description;

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  static Serializer<Category> get serializer => _$categorySerializer;
}
