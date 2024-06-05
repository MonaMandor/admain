// main.dart

import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/features/admain/presentation/bloc/auth_bloc.dart';
import 'package:admain/routes/module.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();

 /*  await Permission.locationWhenInUse.isDenied.then((value) {
    if (value) {
      Permission.locationWhenInUse.request();
    }
  }); */
 Bloc.observer = MyBlocObserver();
  await translator.init(
      languagesList: ['en','ar'],
      assetsDirectory: 'assets/lang/',
      localeType: LocalizationDefaultType.asDefined);
//
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AuthBloc()),
    ],//"com.example.admain"
    child: ModularApp(
      module: AppModule(),
      child: DevicePreview(
        enabled: true,
        builder: (BuildContext context) => const MyApp(),
      ),
    ),
  ));
}
class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: ' Admin',
      theme: AppTheme(context).theme,
      localizationsDelegates: translator.delegates,
      supportedLocales: translator.locals(),
      locale: translator.activeLocale,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
