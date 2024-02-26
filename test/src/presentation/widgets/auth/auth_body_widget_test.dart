import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_body_widget.dart';

import '../../test_scaffold_wrapper.dart';

class MockAuthModeCubit extends MockCubit<AuthModeState>
    implements AuthModeCubit {}

void main() async {
  late MockAuthModeCubit authModeCubit;
  group('AuthBodyWidget', () {
    final findSignInWidget = find.byKey(AuthBodyWidget.signInKey);
    final findSignUpWidget = find.byKey(AuthBodyWidget.signUpKey);
    final findForgotPasswordWidget =
        find.byKey(AuthBodyWidget.forgotPasswordKey);
    setUp(() {
      authModeCubit = MockAuthModeCubit();
    });
    tearDown(() => authModeCubit.close());

    testWidgets(
      'body should display [FormBuilderSignInWidget]',
      (tester) async {
        whenListen(
          authModeCubit,
          Stream.fromIterable([const AuthModeState.signIn()]),
          initialState: const AuthModeState.signIn(),
        );

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: BlocProvider<AuthModeCubit>(
              create: (context) => authModeCubit,
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
        whenListen(
          authModeCubit,
          Stream.fromIterable([const AuthModeState.signUp()]),
          initialState: const AuthModeState.signIn(),
        );

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: BlocProvider<AuthModeCubit>(
              create: (context) => authModeCubit,
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
        whenListen(
          authModeCubit,
          Stream.fromIterable([const AuthModeState.forgotPassword()]),
          initialState: const AuthModeState.signIn(),
        );

        await tester.pumpWidget(
          TestScaffoldWrapper(
            child: BlocProvider<AuthModeCubit>(
              create: (context) => authModeCubit,
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
  });
}
