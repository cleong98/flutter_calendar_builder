import 'package:flutter/material.dart';
import 'package:example/l10n/gen/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}