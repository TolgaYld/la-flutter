import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/src/domain/usecases/auth/check_email_exists_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/check_username_exists_usecase.dart';

part 'check_if_taken_state.dart';
part 'check_if_taken_cubit.freezed.dart';

class CheckIfTakenCubit extends Cubit<CheckIfTakenState> {
  CheckIfTakenCubit({
    required CheckEmailExistsUsecase checkEmailExistsUsecase,
    required CheckUsernameExistsUsecase checkUsernameExistsUsecase,
  })  : _checkEmailExistsUsecase = checkEmailExistsUsecase,
        _checkUsernameExistsUsecase = checkUsernameExistsUsecase,
        super(
          const CheckIfTakenState.check(
            hasFailure: false,
            isEmailTaken: false,
            isUsernameTaken: false,
          ),
        );

  final CheckEmailExistsUsecase _checkEmailExistsUsecase;
  final CheckUsernameExistsUsecase _checkUsernameExistsUsecase;

  Future<void> checkEmailIsTakenHandler(String email) async {
    final result = await _checkEmailExistsUsecase(email);

    result.fold(
      (failure) => emit(state.copyWith(hasFailure: true)),
      (isTaken) => emit(state.copyWith(isEmailTaken: isTaken)),
    );
  }

  Future<void> checkUsernameIsTakenHandler(String username) async {
    final result = await _checkUsernameExistsUsecase(username);

    result.fold(
      (failure) => emit(state.copyWith(hasFailure: true)),
      (isTaken) => emit(state.copyWith(isUsernameTaken: isTaken)),
    );
  }
}
