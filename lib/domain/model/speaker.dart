import 'package:gonfi/domain/model/sessions.dart';
import 'package:meta/meta.dart';

@immutable
class Speaker {
  final String name;
  final String lastName;
  final String imageUri;
  final String about;
  final List<Skill> skills;
  final List<Tags> tags;
  final Address address;
  final Company company;
  final List<Session> sessions;
  final List<SocialMediaProfile> socialMediaProfiles;

  Speaker(
      {@required this.name,
      @required this.lastName,
      @required this.address,
      this.imageUri,
      this.company,
      this.sessions,
      this.socialMediaProfiles,
      this.tags = const [],
      this.about = "",
      this.skills});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Speaker &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          address == other.address;

  @override
  int get hashCode => name.hashCode ^ address.hashCode;

  @override
  String toString() {
    return 'Speaker{name: $name, lastName: $lastName, imageUri: $imageUri, about: $about, skills: $skills, tags: $tags, address: $address, company: $company, sessions: $sessions, socialMediaProfiles: $socialMediaProfiles}';
  }
}

@immutable
class Company {
  final String name;
  final String url;
  final String imageUri;

  Company({@required this.name, @required this.url, @required this.imageUri});
}

@immutable
class SocialMediaProfile {}

@immutable
class Address {
  final String city;
  final String country;
  Address({@required this.city, @required this.country});
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

@immutable
class Skill {
  final String name;
  final int color;

  const Skill({this.name, this.color});

  static var mobile = const Skill(name: "mobile", color: 0xFFF);
}
