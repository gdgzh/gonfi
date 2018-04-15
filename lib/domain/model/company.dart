import 'package:meta/meta.dart';

@immutable
class Company {
  final String name;
  final String url;
  final String imageUri;

  Company({@required this.name, @required this.url, @required this.imageUri});
}
