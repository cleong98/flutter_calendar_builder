import 'app_localizations.dart';

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Flutter Calendar Builder 示例';

  @override
  String appVersion(String version) {
    return '版本: $version';
  }

  @override
  String get appVersionUnknown => '未知';
}
