import 'package:flutter/material.dart';

class EmdadgarColorThemeExtension
    extends ThemeExtension<EmdadgarColorThemeExtension> {
  final Color? colorHoloGreyPrimary,
      colorSharpOrange,
      colorSharpOrangeLight,
      colorSharpOrange2,
      colorSharpOrangeDarker,
      colorSharpOrangeDarkFont,
      colorBlack,
      darkThemePrimary,
      darkThemePrimaryLight,
      darkThemeBackgroundLight,
      colorGreyBox,
      whiteColor;

  EmdadgarColorThemeExtension(
      {required this.colorHoloGreyPrimary,
      required this.colorSharpOrange,
      required this.colorSharpOrangeLight,
      required this.colorSharpOrange2,
      required this.colorSharpOrangeDarker,
      required this.colorSharpOrangeDarkFont,
      required this.colorBlack,
      required this.darkThemePrimary,
      required this.darkThemePrimaryLight,
      required this.darkThemeBackgroundLight,
      required this.colorGreyBox,
      required this.whiteColor});

  @override
  EmdadgarColorThemeExtension copyWith(
      {final Color? colorHoloGreyPrimary,
      colorSharpOrange,
      colorSharpOrangeLight,
      colorSharpOrange2,
      colorSharpOrangeDarker,
      colorSharpOrangeDarkFont,
      colorBlack,
      darkThemePrimary,
      darkThemePrimaryLight,
      darkThemeBackgroundLight,
      colorGreyBox,
      whiteColor}) {
    return EmdadgarColorThemeExtension(
      colorHoloGreyPrimary: colorHoloGreyPrimary ?? this.colorHoloGreyPrimary,
      colorSharpOrange: colorSharpOrange ?? this.colorSharpOrange,
      colorSharpOrangeLight:
          colorSharpOrangeLight ?? this.colorSharpOrangeLight,
      colorSharpOrange2: colorSharpOrange2 ?? this.colorSharpOrange2,
      colorSharpOrangeDarker:
          colorSharpOrangeDarker ?? this.colorSharpOrangeDarker,
      colorSharpOrangeDarkFont:
          colorSharpOrangeDarkFont ?? this.colorSharpOrangeDarkFont,
      colorBlack: colorBlack ?? this.colorBlack,
      darkThemePrimary: darkThemePrimary ?? this.darkThemePrimary,
      darkThemePrimaryLight:
          darkThemePrimaryLight ?? this.darkThemePrimaryLight,
      whiteColor: whiteColor ?? this.whiteColor,
      colorGreyBox: colorGreyBox ?? this.colorGreyBox,
      darkThemeBackgroundLight:
          darkThemeBackgroundLight ?? this.darkThemeBackgroundLight,
    );
  }

  factory EmdadgarColorThemeExtension.light() => EmdadgarColorThemeExtension(
        colorHoloGreyPrimary: _convertColor('#464545'),
        colorSharpOrange: _convertColor('#FE5E00'),
        colorSharpOrangeLight: _convertColor('#FD701D'),
        colorSharpOrange2: _convertColor('#FF4D00'),
        colorSharpOrangeDarker: _convertColor('#F2600A'),
        colorSharpOrangeDarkFont: _convertColor('#8B3300'),
        colorBlack: _convertColor('#000000'),
        darkThemePrimary: _convertColor('#2E3D3D'),
        darkThemePrimaryLight: _convertColor('#8E8E8E'),
        darkThemeBackgroundLight: _convertColor('#F5F5FA'),
        colorGreyBox: _convertColor('#EAEDF3'),
        whiteColor: _convertColor('#ffffff'),
      );

  static Color _convertColor(String hexCode) =>
      Color(int.parse('0xFF${hexCode.replaceAll('#', '')}'));

  @override
  ThemeExtension<EmdadgarColorThemeExtension> lerp(
      EmdadgarColorThemeExtension? other, double t) {
    if (other is! EmdadgarColorThemeExtension) {
      return this;
    }

    return EmdadgarColorThemeExtension(
      colorHoloGreyPrimary:
          Color.lerp(colorHoloGreyPrimary, other.colorHoloGreyPrimary, t),
      colorSharpOrange: Color.lerp(colorSharpOrange, other.colorSharpOrange, t),
      colorSharpOrangeLight:
          Color.lerp(colorSharpOrangeLight, other.colorSharpOrangeLight, t),
      colorSharpOrange2:
          Color.lerp(colorSharpOrange2, other.colorSharpOrange2, t),
      colorSharpOrangeDarker:
          Color.lerp(colorSharpOrangeDarker, other.colorSharpOrangeDarker, t),
      colorSharpOrangeDarkFont: Color.lerp(
          colorSharpOrangeDarkFont, other.colorSharpOrangeDarkFont, t),
      colorBlack: Color.lerp(colorBlack, other.colorBlack, t),
      darkThemePrimary: Color.lerp(darkThemePrimary, other.darkThemePrimary, t),
      darkThemePrimaryLight:
          Color.lerp(darkThemePrimaryLight, other.darkThemePrimaryLight, t),
      colorGreyBox: Color.lerp(colorGreyBox, other.colorGreyBox, t),
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t),
      darkThemeBackgroundLight: Color.lerp(
          darkThemeBackgroundLight, other.darkThemeBackgroundLight, t),
    );
  }
}
