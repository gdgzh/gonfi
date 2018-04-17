import 'package:flutter/material.dart';
import 'package:gonfi/pages/speaker/speaker_item.dart';
import 'package:gonfi_domain/models.dart';

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
