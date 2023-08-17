import 'package:example/constants/extensions.dart';
import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_builder/flutter_calendar_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  Widget header(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 30.0),
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const AspectRatio(
            aspectRatio: 1.0,
            child: Hero(
              tag: 'LOGO',
              child: FlutterLogo(size: 150,),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                context.l10n.appTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                context.l10n.appVersion(
                  packageVersion ?? context.l10n.appVersionUnknown,
                ),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(width: 20.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header(context),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Text('$counter'),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Calendar.test();
          // setState(() {
          //   counter += 1;
          // });
        },
      ),
    );
  }
}
