part of 'check_if_taken_cubit.dart';

@freezed
class CheckIfTakenState with _$CheckIfTakenState {
  const factory CheckIfTakenState.check({
    required bool isEmailTaken,
    required bool isUsernameTaken,
    required bool hasFailure,
  }) = _Initial;
}
