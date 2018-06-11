import 'dart:async';

abstract class UseCase<T> {
  Future<T> execute();
}
