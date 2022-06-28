import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/view/page.dart';
import 'package:localization/translations/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('de'), Locale('en'), Locale('tr')],
      fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkTheme = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: darkTheme ? ThemeData.dark() : ThemeData.light(),
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        home: HomePage(darkTheme, onPressed: (changedTheme) {
          setState(() {
            darkTheme = changedTheme;
          });
        }));
  }
}
