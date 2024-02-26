import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locall_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:locall_app/core/widgets/custom_vertical_sized_box_widget.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_text_button_widget.dart';

class FormBuilderSignInWidget extends StatelessWidget {
  const FormBuilderSignInWidget({
    required GlobalKey<FormBuilderState> signInFormKey,
    super.key,
  }) : _signInFormKey = signInFormKey;

  final GlobalKey<FormBuilderState> _signInFormKey;

  @override
  Widget build(BuildContext context) {
    final forgotPasswordString = AppLocalizations.of(context)!.forgot_password;
    final emailOrUsernameString =
        AppLocalizations.of(context)!.email_or_username;
    final passwordString = AppLocalizations.of(context)!.password;
    return FormBuilder(
      key: _signInFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormFieldWidget(
            name: 'email_or_username',
            hintText: emailOrUsernameString,
            icon: FontAwesomeIcons.solidUser,
          ),
          const CustomVerticalSizedBoxWidget(),
          CustomTextFormFieldWidget(
            name: 'password',
            hintText: passwordString,
            icon: FontAwesomeIcons.lock,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: AuthTextButtonWidget(
              text: forgotPasswordString,
              onPressed: () => context.read<AuthModeCubit>().forgotPassword(),
            ),
          ),
        ],
      ),
    );
  }
}
