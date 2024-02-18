import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locall_app/core/common/gen/assets.gen.dart';

class CustomAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  State<CustomAppBarWidget> createState() => _CustomAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return PlatformAppBar(
      title: SvgPicture.asset(Assets.images.logoipsum285),
    );
  }
}
