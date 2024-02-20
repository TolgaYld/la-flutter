import 'package:flutter/material.dart';
import 'package:locall_app/core/extensions/context_extension.dart';

class CustomVerticalSizedBoxWidget extends StatelessWidget {
  const CustomVerticalSizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: context.height * 0.021);
  }
}
