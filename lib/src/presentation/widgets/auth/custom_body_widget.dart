import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locall_app/core/extensions/context_extension.dart';
import 'package:locall_app/core/services/dependency_injection/injection.dart';
import 'package:locall_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:locall_app/core/widgets/custom_vertical_sized_box_widget.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/application/auth/cubit/check_if_taken_cubit.dart';

class CustomBodyWidget extends StatelessWidget {
  CustomBodyWidget({super.key});
  static const Key emailKey = Key('email');
  final _signInKey = GlobalKey<FormBuilderState>();
  final _signUpKey = GlobalKey<FormBuilderState>();
  final _forgotPasswordKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final forgotPasswordString = AppLocalizations.of(context)!.forgot_password;
    final backToLoginString = AppLocalizations.of(context)!.back_to_login;

    Widget textButton({
      required String text,
      required VoidCallback onPressed,
    }) {
      return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(
            right: context.paddingVerticalForTextField,
          ),
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: context.theme.textTheme.labelSmall,
            ),
          ),
        ),
      );
    }

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
                signIn: () => FormBuilder(
                  key: _signInKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFormFieldWidget(
                        key: emailKey,
                        name: 'email',
                        hintText: 'E-Mail',
                        icon: FontAwesomeIcons.at,
                      ),
                      const CustomVerticalSizedBoxWidget(),
                      CustomTextFormFieldWidget(
                        name: 'password',
                        hintText: 'Password',
                        icon: FontAwesomeIcons.lock,
                      ),
                      textButton(
                        text: forgotPasswordString,
                        onPressed: () =>
                            context.read<AuthModeCubit>().forgotPassword(),
                      ),
                    ],
                  ),
                ),
                signUp: () => FormBuilder(
                  key: _signUpKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFormFieldWidget(
                        name: 'email',
                        hintText: 'E-Mail',
                        icon: FontAwesomeIcons.at,
                      ),
                      const CustomVerticalSizedBoxWidget(),
                      CustomTextFormFieldWidget(
                        name: 'password',
                        hintText: 'Password',
                        icon: FontAwesomeIcons.mailchimp,
                      ),
                    ],
                  ),
                ),
                forgotPassword: () => FormBuilder(
                  key: _forgotPasswordKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFormFieldWidget(
                        name: 'email',
                        hintText: 'E-Mail',
                        icon: FontAwesomeIcons.at,
                      ),
                      textButton(
                        text: backToLoginString,
                        onPressed: () => context.read<AuthModeCubit>().signIn(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
