import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/core/errors/failures.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/data/models/user_model.dart';
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
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([
  SignInUsecase,
  SignUpUsecase,
  AuthWithProviderUsecase,
  UpdateUserUsecase,
  UpdatePasswordUsecase,
  ForgotPasswordUsecase,
])
void main() {
  late MockSignInUsecase signInUsecase;
  late MockSignUpUsecase signUpUsecase;
  late MockAuthWithProviderUsecase authWithProviderUsecase;
  late MockUpdateUserUsecase updateUserUsecase;
  late MockUpdatePasswordUsecase updatePasswordUsecase;
  late MockForgotPasswordUsecase forgotPasswordUsecase;
  late AuthBloc bloc;

  final tUser = UserModel.empty();

  setUp(() {
    signInUsecase = MockSignInUsecase();
    signUpUsecase = MockSignUpUsecase();
    authWithProviderUsecase = MockAuthWithProviderUsecase();
    updateUserUsecase = MockUpdateUserUsecase();
    updatePasswordUsecase = MockUpdatePasswordUsecase();
    forgotPasswordUsecase = MockForgotPasswordUsecase();
    bloc = AuthBloc(
      signInUsecase: signInUsecase,
      signUpUsecase: signUpUsecase,
      authWithProviderUsecase: authWithProviderUsecase,
      updateUserUsecase: updateUserUsecase,
      forgotPasswordUsecase: forgotPasswordUsecase,
      updatePasswordUsecase: updatePasswordUsecase,
    );
  });

  tearDown(() => bloc.close());

  group(
    'AuthEvent.signIn',
    () {
      final tSignInParams = SignInParams.empty();
      const tFailure = ApiFailure(message: 'Sign-In Failed');

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.signedIn] when '
        'sign-in succeeds',
        build: () {
          when(signInUsecase(any)).thenAnswer((_) async => Right(tUser));
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.signIn(
            emailOrUsername: tSignInParams.emailOrUsername,
            password: tSignInParams.password,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.signedIn(tUser),
        ],
        verify: (_) {
          verify(signInUsecase(tSignInParams)).called(1);
          verifyNoMoreInteractions(signInUsecase);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.error] when '
        'sign-in fails',
        build: () {
          when(signInUsecase(any)).thenAnswer(
            (_) async => const Left(tFailure),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.signIn(
            emailOrUsername: tSignInParams.emailOrUsername,
            password: tSignInParams.password,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.error(tFailure.message),
        ],
        verify: (_) {
          verify(signInUsecase(tSignInParams)).called(1);
          verifyNoMoreInteractions(signInUsecase);
        },
      );
    },
  );

  group(
    'AuthEvent.signUp',
    () {
      final tSignUpParams = SignUpParams.empty();
      const tFailure = ApiFailure(message: 'Sign-Up Failed');

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.signedUp] when '
        'sign-up succeeds',
        build: () {
          when(signUpUsecase(any)).thenAnswer((_) async => Right(tUser));
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.signUp(
            email: tSignUpParams.email,
            password: tSignUpParams.password,
            repeatPassword: tSignUpParams.repeatPassword,
            username: tSignUpParams.username,
            coordinates: tSignUpParams.coordinates,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.signedUp(tUser),
        ],
        verify: (_) {
          verify(signUpUsecase(tSignUpParams)).called(1);
          verifyNoMoreInteractions(signUpUsecase);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.error] when '
        'sign-up fails',
        build: () {
          when(signUpUsecase(any))
              .thenAnswer((_) async => const Left(tFailure));
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.signUp(
            email: tSignUpParams.email,
            password: tSignUpParams.password,
            repeatPassword: tSignUpParams.repeatPassword,
            username: tSignUpParams.username,
            coordinates: tSignUpParams.coordinates,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.error(tFailure.message),
        ],
        verify: (_) {
          verify(signUpUsecase(tSignUpParams)).called(1);
          verifyNoMoreInteractions(signUpUsecase);
        },
      );
    },
  );

  group(
    'AuthEvent.authWithProvider',
    () {
      final tAuthWithProviderParams = AuthWithProviderParams.empty();
      const tFailure = ApiFailure(message: 'Auth Failed');

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.authWithProvider] when '
        'authtentication via provider succeeds',
        build: () {
          when(authWithProviderUsecase(any)).thenAnswer(
            (_) async => Right(
              tUser,
            ),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.authWithProvider(
            email: tAuthWithProviderParams.email,
            provider: tAuthWithProviderParams.provider,
            providerId: tAuthWithProviderParams.providerId,
            coordinates: tAuthWithProviderParams.coordinates,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.authenticatedWithProvider(tUser),
        ],
        verify: (_) {
          verify(authWithProviderUsecase(tAuthWithProviderParams)).called(1);
          verifyNoMoreInteractions(authWithProviderUsecase);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.error] when '
        'authtentication via provider fails',
        build: () {
          when(authWithProviderUsecase(any)).thenAnswer(
            (_) async => const Left(tFailure),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.authWithProvider(
            email: tAuthWithProviderParams.email,
            provider: tAuthWithProviderParams.provider,
            providerId: tAuthWithProviderParams.providerId,
            coordinates: tAuthWithProviderParams.coordinates,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.error(tFailure.message),
        ],
        verify: (_) {
          verify(authWithProviderUsecase(tAuthWithProviderParams)).called(1);
          verifyNoMoreInteractions(authWithProviderUsecase);
        },
      );
    },
  );

  group(
    'AuthEvent.updateUser',
    () {
      final tUserToUpdate = tUser.copyWith(
        location: tUser.location.copyWith(
          coordinates: [9.36, 9.36],
        ),
      );
      const tFailure = ApiFailure(message: 'Update User Failed');

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.userUpdated] when '
        'user update succeeds',
        build: () {
          when(updateUserUsecase(any)).thenAnswer(
            (_) async => const Right(null),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.updateUser(tUserToUpdate),
        ),
        expect: () => const [
          AuthState.loading(),
          AuthState.userUpdated(),
        ],
        verify: (_) {
          verify(updateUserUsecase(tUserToUpdate)).called(1);
          verifyNoMoreInteractions(updateUserUsecase);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.error] when '
        'user update fails',
        build: () {
          when(updateUserUsecase(any)).thenAnswer(
            (_) async => const Left(tFailure),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.updateUser(tUserToUpdate),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.error(tFailure.message),
        ],
        verify: (_) {
          verify(updateUserUsecase(tUserToUpdate)).called(1);
          verifyNoMoreInteractions(updateUserUsecase);
        },
      );
    },
  );

  group(
    'AuthEvent.updatePassword',
    () {
      final tUpdatePasswordParams = UpdatePasswordParams.empty();
      const tFailure = ApiFailure(message: 'Update Password Failed');

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.passwordChanged] when '
        'update password succeeds',
        build: () {
          when(updatePasswordUsecase(any)).thenAnswer(
            (_) async => const Right(null),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.updatePassword(
            password: tUpdatePasswordParams.password,
            repeatPassword: tUpdatePasswordParams.repeatPassword,
          ),
        ),
        expect: () => const [
          AuthState.loading(),
          AuthState.passwordChanged(),
        ],
        verify: (_) {
          verify(updatePasswordUsecase(tUpdatePasswordParams)).called(1);
          verifyNoMoreInteractions(updatePasswordUsecase);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.error] when '
        'update password fails',
        build: () {
          when(updatePasswordUsecase(any)).thenAnswer(
            (_) async => const Left(tFailure),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          AuthEvent.updatePassword(
            password: tUpdatePasswordParams.password,
            repeatPassword: tUpdatePasswordParams.repeatPassword,
          ),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.error(tFailure.message),
        ],
        verify: (_) {
          verify(updatePasswordUsecase(tUpdatePasswordParams)).called(1);
          verifyNoMoreInteractions(updatePasswordUsecase);
        },
      );
    },
  );

  group(
    'AuthEvent.forgotPassword',
    () {
      const tFailure = ApiFailure(message: 'Update Failed');

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.passwordResetted] when '
        'e-mail to reset password is sended',
        build: () {
          when(forgotPasswordUsecase(any)).thenAnswer(
            (_) async => const Right(null),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          const AuthEvent.forgotPassword('test123@test.com'),
        ),
        expect: () => const [
          AuthState.loading(),
          AuthState.passwordResetted(),
        ],
        verify: (_) {
          verify(forgotPasswordUsecase('test123@test.com')).called(1);
          verifyNoMoreInteractions(forgotPasswordUsecase);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'should emit [AuthState.loading] and [AuthState.error] when '
        'reset password fails',
        build: () {
          when(forgotPasswordUsecase(any)).thenAnswer(
            (_) async => const Left(tFailure),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          const AuthEvent.forgotPassword('test123@test.com'),
        ),
        expect: () => [
          const AuthState.loading(),
          AuthState.error(tFailure.message),
        ],
        verify: (_) {
          verify(forgotPasswordUsecase('test123@test.com')).called(1);
          verifyNoMoreInteractions(forgotPasswordUsecase);
        },
      );
    },
  );
}
