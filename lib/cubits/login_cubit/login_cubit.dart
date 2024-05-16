import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repos/auth_repo/auth_repo_imp.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginIntialState());
  login({required Map<String, dynamic>? userData}) async {
    emit(LoginLoadingState());
    var result = await AuthRepoImp().login(userData: userData!);
    result.fold(
      (failure) => emit(LoginFailureState(errorMessage: failure.errorMessage)),
      (result) => emit(LoginSuccessState()),
    );
  }
}
// states
// method
// provide
// integrate