import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/di/injection_container.dart';
import 'package:my_gallery/core/routes/app_router.dart';
import 'package:my_gallery/core/routes/routers.dart';


class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Narouto Shop',
        debugShowCheckedModeBanner: false,
        navigatorKey: sl<GlobalKey<NavigatorState>>(),
        onGenerateRoute: AppRouter.generateroutes,
        initialRoute: Routes.login,
      ),
    );
  }
}
