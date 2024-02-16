import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';

void main() {
  late AuthModeCubit authModeCubit;

  setUp(() {
    authModeCubit = AuthModeCubit();
  });

  tearDown(() => authModeCubit.close());

  test('initial state should be [_SignInState]', () {
    expect(authModeCubit.state, const AuthModeState.signIn());
  });

  group('SignUpMode', () {
    blocTest<AuthModeCubit, AuthModeState>(
      'emits [_SignUpState]',
      build: AuthModeCubit.new,
      act: (cubit) => cubit.signUp(),
      expect: () => [const AuthModeState.signUp()],
    );
  });

  group('SignInMode', () {
    blocTest<AuthModeCubit, AuthModeState>(
      'emits [_SignInState]',
      build: AuthModeCubit.new,
      act: (cubit) => cubit.signIn(),
      expect: () => [const AuthModeState.signIn()],
    );
  });

  group('ForgotPasswordMode', () {
    blocTest<AuthModeCubit, AuthModeState>(
      'emits [_ForgotPasswordState]',
      build: AuthModeCubit.new,
      act: (cubit) => cubit.forgotPassword(),
      expect: () => [const AuthModeState.forgotPassword()],
    );
  });
}
