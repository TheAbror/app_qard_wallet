import 'package:rxdart/rxdart.dart';

abstract class ICaseUse<T,U> {
  Stream<U> execute(T param);
}