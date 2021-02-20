import 'dart:convert';

class AuthPageState {
  final String loginError;
  final String passwordError;
  final String login;
  final String password;
  final bool authButtonIsActive;
  AuthPageState({
    this.loginError,
    this.passwordError,
    this.login,
    this.password,
    this.authButtonIsActive = false,
  });

  AuthPageState copyWith({
    String loginError,
    String passwordError,
    String login,
    String password,
    bool authButtonIsActive,
  }) {
    return AuthPageState(
      loginError: loginError ?? this.loginError,
      passwordError: passwordError ?? this.passwordError,
      login: login ?? this.login,
      password: password ?? this.password,
      authButtonIsActive: authButtonIsActive ?? this.authButtonIsActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'loginError': loginError,
      'passwordError': passwordError,
      'login': login,
      'password': password,
      'authButtonIsActive': authButtonIsActive,
    };
  }

  factory AuthPageState.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AuthPageState(
      loginError: map['loginError'],
      passwordError: map['passwordError'],
      login: map['login'],
      password: map['password'],
      authButtonIsActive: map['authButtonIsActive'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthPageState.fromJson(String source) =>
      AuthPageState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthPageState(loginError: $loginError, passwordError: $passwordError, login: $login, password: $password, authButtonIsActive: $authButtonIsActive)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthPageState &&
        o.loginError == loginError &&
        o.passwordError == passwordError &&
        o.login == login &&
        o.password == password &&
        o.authButtonIsActive == authButtonIsActive;
  }

  @override
  int get hashCode {
    return loginError.hashCode ^
        passwordError.hashCode ^
        login.hashCode ^
        password.hashCode ^
        authButtonIsActive.hashCode;
  }
}
