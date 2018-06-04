import 'package:flutter/material.dart';
import 'package:gonfi/app/inject/inject.dart';

import 'pages/pages.dart';

class GonfiApp extends StatelessWidget {
  GonfiApp(this._injector);
  final Injector _injector;
  @override
  Widget build(BuildContext context) {
    return InjectorProvider(
      injector: _injector,
      child: MaterialApp(
        title: 'Gonfi',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SchedulePage(),
      ),
    );
  }
}
