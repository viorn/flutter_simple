import 'dart:convert';

import 'package:socfr/states/auth_page_state.dart';

import 'counter_state.dart';

class AppState {
  final CounterState counterPage;
  final String error;
  final AuthPageState authPageState;

  static AppState defalut =
      AppState(counterPage: CounterState(), authPageState: AuthPageState());

  AppState({
    this.counterPage,
    this.error,
    this.authPageState,
  });

  AppState copyWith({
    CounterState counterPage,
    String error,
    AuthPageState authPageState,
  }) {
    return AppState(
      counterPage: counterPage ?? this.counterPage,
      error: error ?? this.error,
      authPageState: authPageState ?? this.authPageState,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'counterPage': counterPage?.toMap(),
      'error': error,
      'authPageState': authPageState?.toMap(),
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AppState(
      counterPage: CounterState.fromMap(map['counterPage']),
      error: map['error'],
      authPageState: AuthPageState.fromMap(map['authPageState']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AppState.fromJson(String source) =>
      AppState.fromMap(json.decode(source));

  @override
  String toString() =>
      'AppState(counterPage: $counterPage, error: $error, authPageState: $authPageState)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AppState &&
        o.counterPage == counterPage &&
        o.error == error &&
        o.authPageState == authPageState;
  }

  @override
  int get hashCode =>
      counterPage.hashCode ^ error.hashCode ^ authPageState.hashCode;
}
