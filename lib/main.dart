import 'package:check_games/firebase_options.dart';
import 'package:check_games/src/core/constants/colors.dart';
import 'package:check_games/src/core/routes/app_router.dart';
import 'package:check_games/src/logic/cubits/cubit/auth_cubit.dart';
import 'package:check_games/src/logic/repositories/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flame/flame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (!kIsWeb) await Flame.device.fullScreen();
  runApp(CartomaniaApp());
}

class CartomaniaApp extends StatelessWidget {
  CartomaniaApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepository()),
      child: ScreenUtilInit(
        designSize: const Size(393, 786),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: "Cartomania",
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.green,
                primary: AppColors.green,
              ),
              textTheme: GoogleFonts.poppinsTextTheme(),
              filledButtonTheme: FilledButtonThemeData(
                style: FilledButton.styleFrom(
                  fixedSize: Size(double.maxFinite, 46.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
