import 'package:flutter/material.dart';
import 'package:locall_app/src/presentation/widgets/custom_app_bar_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(),
    );
  }
}
