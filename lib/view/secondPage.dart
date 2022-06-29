import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:localization/theme/themeManager.dart';
import 'package:localization/theme/themes.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
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
      ]),
    );
  }
}
