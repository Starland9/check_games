import 'package:auto_route/auto_route.dart';
import 'package:check_games/src/core/routes/app_router.gr.dart';
import 'package:check_games/src/logic/cubits/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _fetchUserOrAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  void _fetchUserOrAuth() async {
    final ctx = context;
    await Future.delayed(const Duration(milliseconds: 2));
    if (ctx.mounted) {
      final user = await ctx.read<AuthCubit>().getCurrentUser();
      if (user != null && ctx.mounted) ctx.router.replace(const HomeRoute());
      if (user == null && ctx.mounted) ctx.router.replace(const AuthRoute());
    }
  }
}
