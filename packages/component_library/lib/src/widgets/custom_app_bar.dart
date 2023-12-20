import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required BuildContext context}) {
  final colorTheme = EmdadgarTheme.of(context).materialThemeData.extension<EmdadgarColorThemeExtension>();
  return AppBar(
    automaticallyImplyLeading: false,
    title: ImageManager.emdadKhodroLogo.imageWidget(
        package: 'component_library',
        width: MediaQuery.of(context).size.width * 0.5,
    boxFit: BoxFit.contain,
    ),
    leading: Icon(
        IconManager.menu,
        size: AppSize.s28,
        color: colorTheme?.colorSharpOrange,
    ),
  );
}
