import 'package:flutter/material.dart';
import 'package:gonfi/app/inject/injector.dart';

class InjectorProvider extends InheritedWidget {
  final Injector _injector;

  const InjectorProvider({
    Key key,
    @required Injector injector,
    @required Widget child,
  })  : assert(injector != null),
        assert(child != null),
        _injector = injector,
        super(key: key, child: child);

  static Injector of(BuildContext context) {
    final InjectorProvider provider =
        context.inheritFromWidgetOfExactType(InjectorProvider);

    if (provider == null) throw new NullThrownError();

    return provider._injector;
  }

  @override
  bool updateShouldNotify(InjectorProvider oldWidget) =>
      _injector != oldWidget._injector;
}
