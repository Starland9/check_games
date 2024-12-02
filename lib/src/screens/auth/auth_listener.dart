import 'package:auto_route/auto_route.dart';
import 'package:check_games/src/core/routes/app_router.gr.dart';
import 'package:check_games/src/logic/cubits/cubit/auth_cubit.dart';
import 'package:check_games/src/utils/dialog_utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthListener extends StatelessWidget {
  const AuthListener({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          user: (user) {
            context.router.push(const HomeRoute());
          },
          unauthenticated: () {
            context.router.push(const AuthRoute());
          },
          error: (message) {
            DialogUtils.showAlertDialog(context: context, content: message);
          },
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
