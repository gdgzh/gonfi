import 'package:flutter/material.dart';
import 'package:gonfi/app/pages/speaker/speaker_item.dart';
import 'package:gonfi_domain/domain.dart';

class SpeakerList extends StatelessWidget {
  final List<Speaker> speakers;

  SpeakerList({this.speakers});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemBuilder: (context, index) => new SpeakerItem(speakers[index]),
        itemCount: speakers.length);
  }
}
