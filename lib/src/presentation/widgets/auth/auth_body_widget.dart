import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:locall_app/core/extensions/context_extension.dart';
import 'package:locall_app/core/utils/core_utils.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_text_button_widget.dart';
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
    final notAUserString = AppLocalizations.of(context)!.not_a_user_yet;
    final alreadyAUserString = AppLocalizations.of(context)!.already_a_user_yet;
    final signUpString = AppLocalizations.of(context)!.sign_up;
    final backToLoginString = AppLocalizations.of(context)!.back_to_login;
    final signInString = AppLocalizations.of(context)!.sign_in;
    final resetPasswordString = AppLocalizations.of(context)!.reset_password;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: Navigation
        state.whenOrNull(
          //   signedUp: (user) => ,
          //   signedIn: (user) => ,
          //   authenticatedWithProvider: (user) => ,
          error: (message) => CoreUtils.showSnackBar(context, message),
        );
      },
      builder: (context, authState) {
        return BlocBuilder<AuthModeCubit, AuthModeState>(
          builder: (context, modeState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: context.paddingHorizontalWidgets * 6,
                  ),
                  child: modeState.when(
                    signIn: () => FormBuilderSignInWidget(
                      key: signInKey,
                      signInFormKey: _signInFormKey,
                    ),
                    signUp: () => FormBuilderSignUpWidget(
                      key: signUpKey,
                      signUpFormKey: _signUpFormKey,
                    ),
                    forgotPassword: () => FormBuilderForgotPasswordWidget(
                      key: forgotPasswordKey,
                      forgotPasswordFormKey: _forgotPasswordFormKey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: modeState == const AuthModeState.forgotPassword()
                        ? context.paddingHorizontalWidgets * 15
                        : 0,
                  ),
                  child: authState.maybeWhen(
                    orElse: () => ElevatedButton(
                      onPressed: () {},
                      child: modeState.when(
                        signIn: () => Text(signInString),
                        signUp: () => Text(signUpString),
                        forgotPassword: () => Text(resetPasswordString),
                      ),
                    ),
                    loading: () => SpinKitWave(
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
                if (modeState == const AuthModeState.signIn() ||
                    modeState == const AuthModeState.signUp())
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: context.paddingHorizontalWidgets,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        modeState.maybeWhen(
                          orElse: SizedBox.new,
                          signIn: () => Text(
                            notAUserString,
                            style: context.theme.textTheme.labelSmall,
                          ),
                          signUp: () => Text(
                            alreadyAUserString,
                            style: context.theme.textTheme.labelSmall,
                          ),
                        ),
                        modeState.maybeWhen(
                          orElse: SizedBox.new,
                          signIn: () => AuthTextButtonWidget(
                            text: signUpString,
                            onPressed: () =>
                                context.read<AuthModeCubit>().signUp(),
                            wantPadding: false,
                            differentTextStyle:
                                context.theme.textTheme.labelSmall!.copyWith(
                              color: context.theme.colorScheme.secondary,
                            ),
                          ),
                          signUp: () => AuthTextButtonWidget(
                            text: backToLoginString,
                            onPressed: () =>
                                context.read<AuthModeCubit>().signIn(),
                            wantPadding: false,
                            differentTextStyle:
                                context.theme.textTheme.labelSmall!.copyWith(
                              color: context.theme.colorScheme.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
