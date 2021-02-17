import 'dart:convert';

class AuthPageState {
  final String loginError;
  final String passwordError;
  final bool authButtonIsActive;
  AuthPageState({
    this.loginError,
    this.passwordError,
    this.authButtonIsActive = false,
  });

  AuthPageState copyWith({
    String loginError,
    String passwordError,
    bool authButtonIsActive,
  }) {
    return AuthPageState(
      loginError: loginError ?? this.loginError,
      passwordError: passwordError ?? this.passwordError,
      authButtonIsActive: authButtonIsActive ?? this.authButtonIsActive,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'loginError': loginError,
      'passwordError': passwordError,
      'authButtonIsActive': authButtonIsActive,
    };
  }

  factory AuthPageState.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AuthPageState(
      loginError: map['loginError'],
      passwordError: map['passwordError'],
      authButtonIsActive: map['authButtonIsActive'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthPageState.fromJson(String source) =>
      AuthPageState.fromMap(json.decode(source));

  @override
  String toString() =>
      'AuthPageState(loginError: $loginError, passwordError: $passwordError, authButtonIsActive: $authButtonIsActive)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthPageState &&
        o.loginError == loginError &&
        o.passwordError == passwordError &&
        o.authButtonIsActive == authButtonIsActive;
  }

  @override
  int get hashCode =>
      loginError.hashCode ^
      passwordError.hashCode ^
      authButtonIsActive.hashCode;
}
