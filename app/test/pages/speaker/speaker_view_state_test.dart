import 'package:gonfi/app/pages/speaker/speaker_view_state.dart';
import 'package:gonfi_domain/src/entities.dart';
import 'package:test/test.dart';

void main() {
  SpeakerViewState speaker;

  setUp(() {
    var speakerEntity = Speaker((b) => b
      ..name = 'Name'
      ..lastName = 'Last Name'
      ..imageUri = 'Some image for the speaker'
      ..about = 'bla about the speaker'
      ..company.name = 'Company'
      ..company.imageUri = 'some url'
      ..address.city = 'City'
      ..address.street = 'Street 1'
      ..address.zip = '1234'
      ..address.state = 'State'
      ..address.country = 'Country');
    speaker = SpeakerViewState.fromEntity(speakerEntity);
  });

  group('SpeakerViewState', () {
    test('.displayName show the name and lastName together', () {
      expect(speaker.displayName, 'Name Last Name');
    });

    test('.country show the city and then The Country', () {
      expect(speaker.country, 'City, Country');
    });
  });
}
