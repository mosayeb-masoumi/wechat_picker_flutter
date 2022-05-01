import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wechat_picker_flutter/home_page.dart';



void main() {
  runApp(const MyApp());
  AssetPicker.registerObserve();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),



      // localizationsDelegates: <LocalizationsDelegate<dynamic>>[
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],



      // supportedLocales: const <Locale>[
      //   Locale('zh'), // Chinese
      //   // Locale('iw'), // Hebrew
      // ],
      // locale: const Locale('zh'),


    );


  }
}

