import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repos/auth_repo/auth_repo_imp.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginIntialState());
  late String emailAddress;
  late String myPassword;
  login({required String email, required String password}) async {
    emit(LoginLoadingState());
    var result = await AuthRepoImp().login(email: email, password: password);
    emailAddress = email;
    myPassword = password;
    result.fold(
      (failure) => emit(LoginFailureState(errorMessage: failure.errorMessage)),
      (result) => emit(LoginSuccessState()),
    );
  }
}
