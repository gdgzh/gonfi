import 'package:flutter/material.dart';
import 'package:gonfi/domain/models.dart';
import 'package:gonfi/pages/speaker/speaker_item.dart';

class SpeakerList extends StatelessWidget {
  final List<Speaker> speakers;

  SpeakerList(this.speakers);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => SpeakerItem(speakers[index]),
        itemCount: speakers.length);
  }
}
