import 'package:flutter/material.dart';
import 'package:locall_app/core/extensions/context_extension.dart';

class AuthTextButtonWidget extends StatelessWidget {
  const AuthTextButtonWidget({
    required this.text,
    required this.onPressed,
    this.differentTextStyle,
    this.wantPadding = true,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final bool wantPadding;
  final TextStyle? differentTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: wantPadding ? context.paddingVerticalWidgets : 0,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: differentTextStyle ?? context.theme.textTheme.labelSmall,
        ),
      ),
    );
  }
}
