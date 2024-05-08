class LoginState {}

class LoginIntialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginFailureState extends LoginState {
  final String errorMessage;

  LoginFailureState({required this.errorMessage});
}
