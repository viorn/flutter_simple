import '../states/app_state.dart';

class CounterPlusAction {}

AppState counterPlus(AppState state, CounterPlusAction action) {
  return state.copyWith(
      counterPage:
          state.counterPage.copyWith(counter: state.counterPage.counter + 1));
}
