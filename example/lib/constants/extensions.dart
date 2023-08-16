import 'package:flutter/material.dart';
import 'package:flutter_calendar_builder_demo/l10n/gen/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}