import 'package:redux_thunk/redux_thunk.dart';
import 'package:socfr/states/app_state.dart';

class SetLoginAction {
  String login;

  SetLoginAction({this.login});
}

AppState authSetLogin(AppState state, SetLoginAction action) {
  return state.copyWith(
      authPageState: state.authPageState.copyWith(login: action.login));
}

class SetPasswordAction {
  String password;

  SetPasswordAction({this.password});
}

AppState authSetPassword(AppState state, SetPasswordAction action) {
  return state.copyWith(
      authPageState: state.authPageState.copyWith(password: action.password));
}

class AuthWithPasswordAction {}

AppState authWithPassword(AppState state, AuthWithPasswordAction action) {
  return state;
}
