import 'package:component_library/component_library.dart';
import 'package:domain_models/domain_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'navigation/navigation.dart';

void main() {
  Navigation.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _lightTheme = LightEmdadgarThemeData();

  final _darkTheme = DarkEmdadgarThemeData();


  @override
  Widget build(BuildContext context) {
    return EmdadgarTheme(
      lightTheme: _lightTheme,
      darkTheme: _darkTheme,
      child: MaterialApp.router(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("fa", "IR"),
        ],
        locale: const Locale("fa", "IR"),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: _lightTheme.materialThemeData,
        routerConfig: Navigation.router,
      ),
    );
  }
}

extension on AppBrightnessMode {
  ThemeMode toThemeMode() {
    switch (this) {
      case AppBrightnessMode.alwaysDark:
        return ThemeMode.dark;
      case AppBrightnessMode.alwaysLight:
        return ThemeMode.light;
      case AppBrightnessMode.useSystemSetting:
        return ThemeMode.system;
    }
  }
}