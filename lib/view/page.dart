import 'package:flutter/material.dart';
import 'package:localization/theme/themeManager.dart';
import 'package:localization/theme/themes.dart';
import 'package:localization/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Provider.of<themeManager>(context, listen: false)
                      .setTheme(Themes.Dark);
                },
                icon: const Icon(Icons.tonality)),
            IconButton(
                onPressed: () {
                  Provider.of<themeManager>(context, listen: false)
                      .setTheme(Themes.Light);
                },
                icon: const Icon(Icons.wb_incandescent))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(LocaleKeys.hi_text.tr()),
              Text(LocaleKeys.this_should_be_translated.tr()),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('de'));
                    });
                  },
                  child: const Text("Deutsch")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('en'));
                    });
                  },
                  child: const Text("English")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('tr'));
                    });
                  },
                  child: const Text("Türkçe"))
            ],
          ),
        ));
  }
}
