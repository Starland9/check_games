import 'package:check_games/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class RegisterFrom extends StatelessWidget {
  const RegisterFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Assets.others.casinoCardsSvgrepoCom.svg(height: 100),
        ],
      ),
    );
  }
}
