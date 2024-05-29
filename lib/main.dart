import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery/core/apps/bloc_observer.dart';
import 'package:my_gallery/core/di/injection_container.dart';
import 'package:my_gallery/core/service/shared_pref/shared_pref.dart';
import 'package:my_gallery/my_gallery.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await SharedPref().instantiatePreferences();
  await setupInjector();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyGallery());
  });
}
