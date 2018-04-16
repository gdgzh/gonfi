import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:gonfi/app/app_redux.dart';
import 'package:gonfi/pages/speaker/reducer/speaker_reducer.dart';
import 'package:gonfi/pages/speaker/speaker_list.dart';
import 'package:gonfi_domain/models.dart';
import 'package:redux/redux.dart';

class SpeakersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, List<Speaker>>(
      converter: fromStore,
      builder: (context, vm) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text('Speakers'),
          ),
          body: new SpeakerList(vm),
        );
      },
    );
  }

  static List<Speaker> fromStore(Store<AppState> store) {
    return createSpeaker(); //store.state.speakers;
  }
}
