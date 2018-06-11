import 'package:flutter/material.dart';
import 'package:gonfi/app/gonfi_app.dart';
import 'package:gonfi/app/inject/inject.dart';

final Injector injector = Injector.instance;
void main() {
  runApp(new GonfiApp(injector));
}
