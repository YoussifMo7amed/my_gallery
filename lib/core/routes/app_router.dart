import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery/core/common/screens/under_build_screen.dart';
import 'package:my_gallery/core/di/injection_container.dart';
import 'package:my_gallery/core/routes/base_routes.dart';
import 'package:my_gallery/core/routes/routers.dart';
import 'package:my_gallery/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:my_gallery/features/auth/presentation/screens/login_screen.dart';
import 'package:my_gallery/features/home/presentation/screens/home_screen.dart';

class AppRouter {
  static Route<void> generateroutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.login:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => sl<AuthCubit>(),
          child: const LoginScreen(),
        ));
case Routes.home:
        return BaseRoute(page: MultiBlocProvider(
          providers: [ 
            BlocProvider(
          create: (context) => sl<AuthCubit>(),)
          ],
          child: const HomeScreen()));
      default:
        return BaseRoute(page: const UnderBuildScreen());
    }
  }
}
