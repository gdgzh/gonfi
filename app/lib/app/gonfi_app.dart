import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gonfi/app/inject/inject.dart';
import 'package:gonfi/generated/i18n.dart';

import 'pages/pages.dart';

const primaryColor = Color(0xFF4768FD);

class GonfiApp extends StatelessWidget {
  GonfiApp(this._injector);
  final Injector _injector;
  @override
  Widget build(BuildContext context) {
    var buttonTheme = ButtonTheme(
      height: 48.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
    );
    var textTheme =
        TextTheme(body2: TextStyle(color: Colors.black.withAlpha(80)));
    return InjectorProvider(
      injector: _injector,
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback:
            S.delegate.resolution(fallback: Locale("en", "")),
        title: 'Gonfi',
        theme: ThemeData(
          buttonTheme: buttonTheme.data,
          textTheme: textTheme,
          primaryColor: primaryColor,
        ),
        home: SchedulePage(),
      ),
    );
  }
}
