import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
 const Gap.h(
    double width, {
    super.key,
    double? height,
    this.color,
  })  : _width = width,
        _height = height;

  const Gap.v(
    double height, {
    super.key,
    double? width,
    this.color,
  })  : _width = width,
        _height = height;

  final double? _width;
  final double? _height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Widget w = SizedBox(width: _width, height: _height);
    if (color != null) {
      w = ColoredBox(color: color!, child: w);
    }
    return w;
  }
}