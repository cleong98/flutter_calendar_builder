import 'package:flutter/material.dart';

extension BuildContenxtExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);

  IconThemeData get iconTheme => IconTheme.of(this);

  TextTheme get textTheme => theme.textTheme;

  double get topPadding => mediaQuery.padding.top;

  double get bottomPadding => mediaQuery.padding.bottom;

  double get bottomInsets => mediaQuery.viewInsets.bottom;
}

extension BrightnessExtension on Brightness {
  bool get isDark => this == Brightness.dark;

  bool get isLight => this == Brightness.light;

  Brightness get reverse =>
      this == Brightness.light ? Brightness.dark : Brightness.light;
}

extension ThemeDataExtension on ThemeData {
  Brightness get effectiveBrightness =>
      appBarTheme.systemOverlayStyle?.statusBarBrightness ?? brightness;
}
