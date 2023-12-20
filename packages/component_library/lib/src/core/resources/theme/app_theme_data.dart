

import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

abstract class EmdadgarThemeData {
  ThemeData get materialThemeData;
  ThemeData get materialMainRoutesThemeData;
  ThemeData get cupertinoMainRoutesThemeData;
  ThemeData get materialThemeDataWithExtensionLoaded;
  ThemeData get materialModalTextFieldTheme;
  ThemeData get cupertinoModalTextFieldTheme;
}

class LightEmdadgarThemeData extends EmdadgarThemeData {

  @override
  ThemeData get materialThemeData => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    extensions: [
      EmdadgarColorThemeExtension.light(),
      EmdadgarTextThemeExtension.light(),
    ],
  );

  @override
  ThemeData get materialThemeDataWithExtensionLoaded {
    final textTheme = materialThemeData.extension<EmdadgarTextThemeExtension>()!;
    final colorTheme = materialThemeData.extension<EmdadgarColorThemeExtension>()!;
    return materialThemeData.copyWith(
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorTheme.whiteColor,
        closeIconColor: colorTheme.colorBlack,
        showCloseIcon: true,
        contentTextStyle: textTheme.mobileRegular10,
        behavior: SnackBarBehavior.fixed,
        elevation: 0.0,
      ),
    );
  }

  @override
  ThemeData get cupertinoMainRoutesThemeData => throw UnimplementedError();

  @override
  ThemeData get cupertinoModalTextFieldTheme => throw UnimplementedError();

  @override
  ThemeData get materialMainRoutesThemeData {
    final textTheme = materialThemeData.extension<EmdadgarTextThemeExtension>()!;
    final colorTheme = materialThemeData.extension<EmdadgarColorThemeExtension>()!;
    return materialThemeDataWithExtensionLoaded.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: colorTheme.colorGreyBox,
        elevation: AppSize.s0,
        centerTitle: true,
        titleTextStyle: textTheme.mobileBold14,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorTheme.darkThemePrimary,
        selectedItemColor: colorTheme.colorSharpOrange,
        unselectedItemColor: colorTheme.darkThemePrimaryLight,
        type: BottomNavigationBarType.fixed
      )
    );
  }

  @override
  // TODO: implement materialModalTextFieldTheme
  ThemeData get materialModalTextFieldTheme => throw UnimplementedError();
}


class DarkEmdadgarThemeData extends EmdadgarThemeData{
  @override
  // TODO: implement cupertinoMainRoutesThemeData
  ThemeData get cupertinoMainRoutesThemeData => throw UnimplementedError();

  @override
  // TODO: implement cupertinoModalTextFieldTheme
  ThemeData get cupertinoModalTextFieldTheme => throw UnimplementedError();

  @override
  // TODO: implement materialMainRoutesThemeData
  ThemeData get materialMainRoutesThemeData => throw UnimplementedError();

  @override
  // TODO: implement materialModalTextFieldTheme
  ThemeData get materialModalTextFieldTheme => throw UnimplementedError();

  @override
  // TODO: implement materialThemeData
  ThemeData get materialThemeData => throw UnimplementedError();

  @override
  // TODO: implement materialThemeDataWithExtensionLoaded
  ThemeData get materialThemeDataWithExtensionLoaded => throw UnimplementedError();
}

