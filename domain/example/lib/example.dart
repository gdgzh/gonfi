import 'package:gonfi_domain/models.dart';

main(List<String> args) {
  companyExample();
  skillExample();
  speakerExample();
}

void speakerExample() {
  Speaker speaker = new Speaker((b) => b
    ..name = 'Hans'
    ..lastName = 'Peter'
    ..imageUri = 'Some image for the speaker'
    ..about = 'Bla bla about the speaker'
    ..address.city = 'Zürich'
    ..address.country = 'Switzerland'
    ..address.state = 'Zürich'
    ..address.zip = '8048'
    ..address.street = 'Buckhauserstrasse 31'
    ..company.name = 'Test Companty'
    ..company.imageUri = 'some Image Uri');

  print(speaker);

  var printIt = serializers.serializeWith(Speaker.serializer, speaker);
  print(printIt);
}

void skillExample() {
  Skill skill = new Skill((b) => b
    ..name = 'skill name'
    ..color = 0xFFF);
  print(skill);

  Skill skill2 = new Skill((b) => b
    ..name = 'skill name'
    ..color = 0xFFF);
  assert(skill == skill2);
  var serilized = serializers.serializeWith(Skill.serializer, skill);
  print(serilized);
}

void companyExample() {
  Company company = new Company((b) => b
    ..name = 'Company Name'
    ..imageUri = 'Some Url');
  print(company);

  final otherCompany = company.rebuild((b) => b.name = "Some other name");
  print(otherCompany);
  assert(otherCompany != company);
}
