import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:mutex/mutex.dart';
import 'package:socfr/data/dataproviders/auth_response.dart';
import 'package:socfr/data/dataproviders/rest.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());

  Mutex _mutex = Mutex();

  void setLogin(String login) {
    _mutex.protect(() {
      emit(state.copyWith(login: login));
    });
  }

  void setPassword(String password) {
    _mutex.protect(() {
      emit(state.copyWith(login: password));
    });
  }

  void auth() {
    _mutex.protect(() async {
      try {
        emit(state.copyWith(loading: true));
        AuthResponse result = await Rest.auth(state.login, state.password);
      } finally {
        emit(state.copyWith(loading: false));
      }
    });
  }
}
