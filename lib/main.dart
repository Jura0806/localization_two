import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization_two/pages/home_page.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    
    runApp(
      EasyLocalization(
          supportedLocales: [Locale('en', 'US'), Locale('ko', 'KO'), Locale('ja', 'JA')],
          path: 'assets/translations', // <-- change the path of the translation files
          fallbackLocale: Locale('en', 'US'),
          child: MyApp()
      ),
    );
    
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomePage()
    );
  }
}

