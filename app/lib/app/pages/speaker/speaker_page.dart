import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpeakersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
    /*new StoreConnector<AppState, List<Speaker>>(
      converter: fromStore,
      builder: (context, vm) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text('Speakers'),
          ),
          body: new SpeakerList(speakers: vm),
        );
      },
    );*/
  }

  /* static List<Speaker> fromStore(Store<AppState> store) {
    return createSpeaker(); //store.state.speakers;
  }*/
}
