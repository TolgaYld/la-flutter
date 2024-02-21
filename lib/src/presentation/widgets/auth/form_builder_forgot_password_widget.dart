import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locall_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_text_button_widget.dart';

class FormBuilderForgotPasswordWidget extends StatelessWidget {
  const FormBuilderForgotPasswordWidget({
    required GlobalKey<FormBuilderState> forgotPasswordFormKey,
    required this.backToLoginString,
    super.key,
  }) : _forgotPasswordFormKey = forgotPasswordFormKey;

  final GlobalKey<FormBuilderState> _forgotPasswordFormKey;
  final String backToLoginString;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _forgotPasswordFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormFieldWidget(
            name: 'email',
            hintText: 'E-Mail',
            icon: FontAwesomeIcons.at,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: AuthTextButtonWidget(
              text: backToLoginString,
              onPressed: () => context.read<AuthModeCubit>().signIn(),
            ),
          ),
        ],
      ),
    );
  }
}
