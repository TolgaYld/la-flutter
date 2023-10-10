import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_mode_state.dart';

class AuthModeCubit extends Cubit<AuthModeState> {
  AuthModeCubit()
      : super(AuthModeLogin(
         
        ));

  void login() {
    emit(AuthModeLogin());
  }

  void signUp() {
    emit(AuthModeSignUp());
  }

  void forgotPassword() {
    emit(AuthModeForgotPassword());
  }
}
