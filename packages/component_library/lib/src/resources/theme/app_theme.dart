import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class EmdadgarTheme extends InheritedWidget {
  const EmdadgarTheme({
    super.key,
    required super.child,
    required this.lightTheme,
    required this.darkTheme,
  });
  final EmdadgarThemeData lightTheme;
  final EmdadgarThemeData darkTheme;

  @override
  bool updateShouldNotify(EmdadgarTheme oldWidget) =>
      oldWidget.lightTheme != lightTheme || oldWidget.darkTheme != darkTheme;

  static EmdadgarThemeData of(BuildContext context) {
    final EmdadgarTheme? inheritedTheme =
    context.dependOnInheritedWidgetOfExactType<EmdadgarTheme>();
    assert(inheritedTheme != null,
    'No EmdadgarTheme found in the current context');
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark
        ? inheritedTheme!.darkTheme
        : inheritedTheme!.lightTheme;
  }
}
