import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import '../main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    try {
      final PackageInfo info = await PackageInfo.fromPlatform();
      packageVersion = info.version;
    } catch (_) {}
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const HomePage(),
          transitionsBuilder: (_, Animation<double> a, __, Widget chid) {
            return FadeTransition(
              opacity: a,
              child: chid,
            );
          },
          transitionDuration: const Duration(seconds: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).canvasColor,
      child: const Center(
        child: Hero(
          tag: 'LOGO',
          child: FlutterLogo(
            size: 150,
          ),
        ),
      ),
    );
  }
}
