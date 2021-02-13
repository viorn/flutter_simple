import 'package:socfr/common/handler.dart';
import 'package:socfr/main.dart';
import 'package:socfr/states/counter_state.dart';

class CounterPlusEvent {}

class CounterHanlder extends Handler {
  @override
  void handle(value) {
    if (value is CounterPlusEvent) {
      CounterState.store.mutex.protect(() => {
            CounterState.store.behavior.add(CounterState.store.behavior.value
                .copyWith(
                    counter: CounterState.store.behavior.value.counter + 1))
          });
    }
  }
}
