import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locall_app/core/common/gen/assets.gen.dart';
import 'package:locall_app/core/services/dependency_injection/injection.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/application/auth/cubit/check_if_taken_cubit.dart';
import 'package:locall_app/src/presentation/widgets/auth/auth_body_widget.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: SvgPicture.asset(Assets.images.logoipsum285)
            .animate()
            .fade(duration: 210.ms)
            .then()
            .shimmer(duration: 210.ms),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<AuthModeCubit>(
            create: (context) => sl<AuthModeCubit>(),
          ),
          BlocProvider<CheckIfTakenCubit>(
            create: (context) => sl<CheckIfTakenCubit>(),
          ),
          BlocProvider<AuthBloc>(create: (context) => sl<AuthBloc>()),
        ],
        child: AuthBodyWidget(),
      ),
    );
  }
}
