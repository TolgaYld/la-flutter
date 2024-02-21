import 'package:flutter/material.dart';
import 'package:locall_app/core/extensions/context_extension.dart';

class AuthTextButtonWidget extends StatelessWidget {
  const AuthTextButtonWidget({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
