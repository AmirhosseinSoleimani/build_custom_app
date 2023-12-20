import 'package:flutter/material.dart';


class Label extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  const Label(this.title, {this.textStyle, this.textAlign, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String path;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final String package;
  const ImageWidget({required this.path, Key? key, this.color, this.width, this.height, this.boxFit,required this.package}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
      package: package,
      color: color,
      width: width,
      height: height,
    );
  }
}
