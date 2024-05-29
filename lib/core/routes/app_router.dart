import 'package:flutter/material.dart';
import 'package:my_gallery/core/common/screens/under_build_screen.dart';
import 'package:my_gallery/core/routes/base_routes.dart';


class AppRouter {
  static Route<void> generateroutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
   

      default:
        return BaseRoute(page: const UnderBuildScreen());
    }
  }
}
