import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_mode_state.dart';
part 'auth_mode_cubit.freezed.dart';

class AuthModeCubit extends Cubit<AuthModeState> {
  AuthModeCubit() : super(const AuthModeState.signIn());

  void signIn() {
    emit(const AuthModeState.signIn());
  }

  void signUp() {
    emit(const AuthModeState.signUp());
  }

  void forgotPassword() {
    emit(const AuthModeState.forgotPassword());
  }
}
