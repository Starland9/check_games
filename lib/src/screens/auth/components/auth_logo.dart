import 'package:check_games/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({
    super.key,
    this.height = 250,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "logo",
      child: Assets.others.casinoCardsSvgrepoCom.svg(
        height: height.h,
      ),
    );
  }
}
