import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locall_app/core/common/gen/assets.gen.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_body_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Assets.images.logoipsum285)
            .animate()
            .fade(duration: 210.ms)
            .then()
            .shimmer(duration: 210.ms),
      ),
      body: AuthBodyWidget(),
    );
  }
}
