import 'package:mutex/mutex.dart';
import 'package:rxdart/subjects.dart';

class Store<T> {
  Mutex _mutex = Mutex();
  Mutex get mutex => _mutex;
  BehaviorSubject<T> _behavior;
  BehaviorSubject<T> get behavior => _behavior;

  Store(T initValue) {
    _behavior = BehaviorSubject.seeded(initValue);
  }
}
