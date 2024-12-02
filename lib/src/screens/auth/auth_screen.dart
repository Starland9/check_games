import 'package:animate_do/animate_do.dart' as anim;
import 'package:auto_route/auto_route.dart';
import 'package:check_games/src/core/routes/app_router.gr.dart';
import 'package:check_games/src/screens/auth/auth_listener.dart';
import 'package:check_games/src/screens/auth/components/auth_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AuthListener(
      child: Scaffold(
        body: anim.FadeInDown(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  anim.Roulette(
                    child: anim.FadeInUpBig(
                      child: const AuthLogo(),
                    ),
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
                  anim.FadeInLeftBig(
                    child: FilledButton.icon(
                      onPressed: () =>
                          context.router.push(const RegisterRoute()),
                      label: const Text("Allons-y"),
                      icon: const Icon(Icons.arrow_forward),
                      iconAlignment: IconAlignment.end,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Vous avez deja un compte?"),
                      TextButton(
                        onPressed: () =>
                            context.router.push(const LoginRoute()),
                        child: const Text("Se connecter"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
