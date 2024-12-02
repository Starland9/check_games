import 'package:auto_route/auto_route.dart';
import 'package:check_games/src/screens/auth/register_from.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterFrom(),
    );
  }
}
