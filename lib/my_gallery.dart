import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/di/injection_container.dart';
import 'package:my_gallery/core/routes/app_router.dart';
import 'package:my_gallery/core/routes/routers.dart';
import 'package:my_gallery/core/service/shared_pref/pref_keys.dart';
import 'package:my_gallery/core/service/shared_pref/shared_pref.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Narouto Shop',
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              body: Builder(
                builder: (context) {
                  return widget!;
                },
              ),
            ),
          );
        },
        navigatorKey: sl<GlobalKey<NavigatorState>>(),
        onGenerateRoute: AppRouter.generateroutes,
        initialRoute: SharedPref().getString(PrefKeys.accessToken) != null
            ? Routes.home
            : Routes.login,
      ),
    );
  }
}
