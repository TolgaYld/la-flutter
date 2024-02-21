import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:locall_app/core/services/dependency_injection/injection.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/application/auth/cubit/check_if_taken_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/form_builder_forgot_password_widget.dart';
import 'package:locall_app/src/presentation/widgets/auth/form_builder_sign_in_widget.dart';
import 'package:locall_app/src/presentation/widgets/auth/form_builder_sign_up_widget.dart';

class AuthBodyWidget extends StatelessWidget {
  AuthBodyWidget({super.key});
  static const Key signInKey = Key('signIn');
  static const Key signUpKey = Key('signUp');
  static const Key forgotPasswordKey = Key('forgotPassword');

  final _signInFormKey = GlobalKey<FormBuilderState>();
  final _signUpFormKey = GlobalKey<FormBuilderState>();
  final _forgotPasswordFormKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final forgotPasswordString = AppLocalizations.of(context)!.forgot_password;
    final backToLoginString = AppLocalizations.of(context)!.back_to_login;

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthModeCubit>(create: (context) => sl<AuthModeCubit>()),
        BlocProvider<CheckIfTakenCubit>(
          create: (context) => sl<CheckIfTakenCubit>(),
        ),
        BlocProvider<AuthBloc>(create: (context) => sl<AuthBloc>()),
      ],
      child: BlocBuilder<AuthModeCubit, AuthModeState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state.when(
                signIn: () => FormBuilderSignInWidget(
                  key: signInKey,
                  signInFormKey: _signInFormKey,
                  forgotPasswordString: forgotPasswordString,
                ),
                signUp: () => FormBuilderSignUpWidget(
                    key: signUpKey, signUpFormKey: _signUpFormKey),
                forgotPassword: () => FormBuilderForgotPasswordWidget(
                  key: forgotPasswordKey,
                  forgotPasswordFormKey: _forgotPasswordFormKey,
                  backToLoginString: backToLoginString,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
