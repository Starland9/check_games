import 'package:auto_route/auto_route.dart';
import 'package:check_games/src/core/routes/app_router.gr.dart';
import 'package:check_games/src/logic/cubits/cubit/auth_cubit.dart';
import 'package:check_games/src/screens/auth/components/auth_logo.dart';
import 'package:check_games/src/screens/auth/components/password_field.dart';
import 'package:check_games/src/shared/components/sh_loader.dart';
import 'package:check_games/src/utils/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AuthLogo(
                  height: 150,
                ),
                SizedBox(height: 32.h),
                Text(
                  "Inscrivez vous",
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                SizedBox(height: 8.h),
                const Text(
                  "Veuillez remplir les champs suivants",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32.h),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Nom",
                  ),
                  validator: FormBuilderValidators.required(),
                ),
                SizedBox(height: 12.h),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  validator: FormBuilderValidators.email(),
                ),
                SizedBox(height: 12.h),
                PasswordField(
                  passwordController: _passwordController,
                  label: "Mot de passe",
                ),
                SizedBox(height: 12.h),
                PasswordField(
                  passwordController: _passwordConfirmController,
                  label: "Confirmer le mot de passe",
                ),
                SizedBox(height: 32.h),
                _buildSumbit(),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Vous avez deja un compte?"),
                    TextButton(
                      onPressed: () => context.router.push(const LoginRoute()),
                      child: const Text("Se connecter"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocBuilder<AuthCubit, AuthState> _buildSumbit() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const ShLoader(),
          orElse: () {
            return FilledButton(
              onPressed: () {
                if (_passwordController.text !=
                    _passwordConfirmController.text) {
                  DialogUtils.showAlertDialog(
                    context: context,
                    content: "Les mots de passe ne correspondent pas",
                  );
                  return;
                }

                if (_formKey.currentState?.validate() ?? false) {
                  context.read<AuthCubit>().register(
                        _nameController.text,
                        _emailController.text,
                        _passwordController.text,
                      );
                }
              },
              child: const Text("S'inscrire"),
            );
          },
        );
      },
    );
  }
}
