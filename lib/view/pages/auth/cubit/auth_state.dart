part of 'auth_cubit.dart';

@immutable
class AuthState {
  final String login;
  final String password;
  final String error;
  final bool loading;
  AuthState({
    this.login,
    this.password,
    this.error,
    this.loading,
  });

  AuthState copyWith({
    String login,
    String password,
    String error,
    bool loading,
  }) {
    return AuthState(
      login: login ?? this.login,
      password: password ?? this.password,
      error: error ?? this.error,
      loading: loading ?? this.loading,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'error': error,
      'loading': loading,
    };
  }

  factory AuthState.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return AuthState(
      login: map['login'],
      password: map['password'],
      error: map['error'],
      loading: map['loading'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthState.fromJson(String source) =>
      AuthState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthState(login: $login, password: $password, error: $error, loading: $loading)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is AuthState &&
        o.login == login &&
        o.password == password &&
        o.error == error &&
        o.loading == loading;
  }

  @override
  int get hashCode {
    return login.hashCode ^
        password.hashCode ^
        error.hashCode ^
        loading.hashCode;
  }
}
