import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_body_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:mocktail/mocktail.dart';

import '../../test_scaffold_wrapper.dart';

class MockAuthModeCubit extends MockCubit<AuthModeState>
    implements AuthModeCubit {}

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class FakeAuthEvent extends Fake implements AuthEvent {}

class FakeAuthState extends Fake implements AuthState {}

void main() async {
  late MockAuthModeCubit authModeCubit;
  late MockAuthBloc authBloc;
  group('AuthBodyWidget', () {
    final findSignInWidget = find.byKey(AuthBodyWidget.signInKey);
    final findSignUpWidget = find.byKey(AuthBodyWidget.signUpKey);
    final findForgotPasswordWidget =
        find.byKey(AuthBodyWidget.forgotPasswordKey);
    final findLoadingIndicator = find.byType(SpinKitWave);
    final findElevatedButton = find.byType(ElevatedButton);

    setUpAll(() {
      registerFallbackValue(FakeAuthEvent());
      registerFallbackValue(FakeAuthState());
    });

    setUp(() {
      authModeCubit = MockAuthModeCubit();
      authBloc = MockAuthBloc();
    });
    tearDown(() {
      authModeCubit.close();
      authBloc.close();
    });

    testWidgets(
      'body should display [FormBuilderSignInWidget]',
      (tester) async {
        when(() => authBloc.state).thenReturn(const AuthState.initial());
        whenListen(
          authModeCubit,
          Stream.fromIterable([const AuthModeState.signIn()]),
          initialState: const AuthModeState.signIn(),
        );

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: MultiBlocProvider(
              providers: [
                BlocProvider<AuthModeCubit>(
                  create: (context) => authModeCubit,
                ),
                BlocProvider<AuthBloc>(
                  create: (context) => authBloc,
                ),
              ],
              child: AuthBodyWidget(),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(findSignInWidget, findsOneWidget);
        expect(findForgotPasswordWidget, findsNothing);
        expect(findSignUpWidget, findsNothing);
      },
    );

    testWidgets(
      'body should display [FormBuilderSignUpWidget]',
      (tester) async {
        when(() => authBloc.state).thenReturn(const AuthState.initial());
        whenListen(
          authModeCubit,
          Stream.fromIterable([const AuthModeState.signUp()]),
          initialState: const AuthModeState.signIn(),
        );

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: MultiBlocProvider(
              providers: [
                BlocProvider<AuthModeCubit>(
                  create: (context) => authModeCubit,
                ),
                BlocProvider<AuthBloc>(
                  create: (context) => authBloc,
                ),
              ],
              child: AuthBodyWidget(),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(findSignInWidget, findsNothing);
        expect(findForgotPasswordWidget, findsNothing);
        expect(findSignUpWidget, findsOneWidget);
      },
    );

    testWidgets(
      'body should display [FormBuilderForgotPasswordWidget]',
      (tester) async {
        when(() => authBloc.state).thenReturn(const AuthState.initial());
        whenListen(
          authModeCubit,
          Stream.fromIterable([const AuthModeState.forgotPassword()]),
          initialState: const AuthModeState.signIn(),
        );

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: MultiBlocProvider(
              providers: [
                BlocProvider<AuthModeCubit>(
                  create: (context) => authModeCubit,
                ),
                BlocProvider<AuthBloc>(
                  create: (context) => authBloc,
                ),
              ],
              child: AuthBodyWidget(),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(findSignInWidget, findsNothing);
        expect(findForgotPasswordWidget, findsOneWidget);
        expect(findSignUpWidget, findsNothing);
      },
    );

    testWidgets(
      'body should display [CircularProgressIndicator]',
      (tester) async {
        when(() => authModeCubit.state)
            .thenReturn(const AuthModeState.signIn());
        when(() => authBloc.state).thenReturn(const AuthState.loading());

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: MultiBlocProvider(
              providers: [
                BlocProvider<AuthModeCubit>(
                  create: (context) => authModeCubit,
                ),
                BlocProvider<AuthBloc>(
                  create: (context) => authBloc,
                ),
              ],
              child: AuthBodyWidget(),
            ),
          ),
        );

        expect(findLoadingIndicator, findsOneWidget);
        expect(findElevatedButton, findsNothing);
      },
    );
  });
}
