import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void plus() {
    emit(state.copyWith(counter: state.counter + 1));
  }
}
