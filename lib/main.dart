import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/theme/themeManager.dart';
import 'package:localization/view/page.dart';
import 'package:localization/translations/codegen_loader.g.dart';
import 'package:localization/view/secondPage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('de'), Locale('en'), Locale('tr')],
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => themeManager(),
          ),
        ],
        child: Consumer<themeManager>(builder: (context, theme, child) {
          return MaterialApp(
              title: 'Theme App',
              routes: {
                //'/': (context) => HomePage(),
                '/second': (context) => SecondPage(),
              },
              debugShowCheckedModeBanner: false,
              theme: theme.themeData,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              locale: context.locale,
              home: const HomePage());
        }));
  }
}
