import 'package:check_games/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterFrom extends StatelessWidget {
  const RegisterFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.others.casinoCardsSvgrepoCom.svg(
              height: 200.h,
            ),
            SizedBox(height: 32.h),
            Text(
              "Bienvenue sur Cartomania",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 8.h),
            const Text(
              "Creez un compte et commencez à jouer",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.h),
            FilledButton.icon(
              onPressed: () {},
              label: const Text("Allons-y"),
              icon: const Icon(Icons.arrow_forward),
              iconAlignment: IconAlignment.end,
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Vous avez deja un compte?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Se connecter"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
