import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locall_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:locall_app/core/widgets/custom_vertical_sized_box_widget.dart';

class FormBuilderSignUpWidget extends StatelessWidget {
  const FormBuilderSignUpWidget({
    required GlobalKey<FormBuilderState> signUpFormKey,
    super.key,
  }) : _signUpFormKey = signUpFormKey;

  final GlobalKey<FormBuilderState> _signUpFormKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _signUpFormKey,
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
            icon: FontAwesomeIcons.lock,
          ),
        ],
      ),
    );
  }
}
