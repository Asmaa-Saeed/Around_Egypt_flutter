import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repos/auth_repo/auth_repo_imp.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterIntialState());
  Future<void> register({required Map<String, dynamic>? userData}) async {
    emit(RegisterLoadingState());
    var result = await AuthRepoImp().register(userData: userData!);
    result.fold(
      (failure) =>
          emit(RegisterFailureState(errorMessage: failure.errorMessage)),
      (result) => emit(RegisterSuccessState()),
    );
  }
}
