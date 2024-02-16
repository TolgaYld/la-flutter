import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';
import 'package:locall_app/src/domain/entities/user.dart';
import 'package:locall_app/src/domain/usecases/auth/auth_with_provider_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/forgot_password_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/params/auth_with_provider_params.dart';
import 'package:locall_app/src/domain/usecases/auth/params/sign_in_params.dart';
import 'package:locall_app/src/domain/usecases/auth/params/sign_up_params.dart';
import 'package:locall_app/src/domain/usecases/auth/params/update_password_params.dart';
import 'package:locall_app/src/domain/usecases/auth/sign_in_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/sign_up_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/update_password_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/update_user_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required SignInUsecase signInUsecase,
    required SignUpUsecase signUpUsecase,
    required AuthWithProviderUsecase authWithProviderUsecase,
    required UpdateUserUsecase updateUserUsecase,
    required ForgotPasswordUsecase forgotPasswordUsecase,
    required UpdatePasswordUsecase updatePasswordUsecase,
  })  : _signInUsecase = signInUsecase,
        _signUpUsecase = signUpUsecase,
        _authWithProviderUsecase = authWithProviderUsecase,
        _updateUserUsecase = updateUserUsecase,
        _forgotPasswordUsecase = forgotPasswordUsecase,
        _updatePasswordUsecase = updatePasswordUsecase,
        super(const _InitialState()) {
    on<AuthEvent>((event, emit) {
      emit(const AuthState.loading());
    });
    on<_SignInEvent>(_signInHandler);
    on<_SignUpEvent>(_signUpHandler);
    on<_AuthWithProviderEvent>(_authWithProviderHandler);
    on<_UpdateUserEvent>(_updateUserHandler);
    on<_UpdatePasswordEvent>(_updatePasswordHandler);
    on<_ForgotPasswordEvent>(_forgotPasswordHandler);
  }

  final SignInUsecase _signInUsecase;
  final SignUpUsecase _signUpUsecase;
  final AuthWithProviderUsecase _authWithProviderUsecase;
  final UpdateUserUsecase _updateUserUsecase;
  final ForgotPasswordUsecase _forgotPasswordUsecase;
  final UpdatePasswordUsecase _updatePasswordUsecase;

  Future<void> _signInHandler(
    _SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signInUsecase(
      SignInParams(
        emailOrUsername: event.emailOrUsername,
        password: event.password,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.signedIn(user)),
    );
  }

  Future<void> _signUpHandler(
    _SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signUpUsecase(
      SignUpParams(
        email: event.email,
        password: event.password,
        repeatPassword: event.repeatPassword,
        username: event.username,
        coordinates: event.coordinates,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.signedUp(user)),
    );
  }

  Future<void> _authWithProviderHandler(
    _AuthWithProviderEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _authWithProviderUsecase(
      AuthWithProviderParams(
        provider: event.provider,
        email: event.email,
        providerId: event.providerId,
        coordinates: event.coordinates,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticatedWithProvider(user)),
    );
  }

  Future<void> _updateUserHandler(
    _UpdateUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _updateUserUsecase(event.user);

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.userUpdated()),
    );
  }

  Future<void> _updatePasswordHandler(
    _UpdatePasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _updatePasswordUsecase(
      UpdatePasswordParams(
        password: event.password,
        repeatPassword: event.repeatPassword,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.passwordChanged()),
    );
  }

  Future<void> _forgotPasswordHandler(
    _ForgotPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _forgotPasswordUsecase(event.email);

    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (r) => emit(const AuthState.passwordResetted()),
    );
  }
}
