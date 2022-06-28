import 'package:flutter/material.dart';
import 'package:localization/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  HomePage(this.darkTheme, {Key? key, required this.onPressed})
      : super(key: key);

  bool darkTheme;
  Function onPressed;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Switch(
                value: widget.darkTheme,
                onChanged: (changedTheme) {
                  widget.onPressed(changedTheme);
                })
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
                      context.setLocale(Locale('de'));
                    });
                  },
                  child: Text("Deutsch")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(Locale('en'));
                    });
                  },
                  child: Text("English")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(Locale('tr'));
                    });
                  },
                  child: Text("Türkçe"))
            ],
          ),
        ));
  }
}
