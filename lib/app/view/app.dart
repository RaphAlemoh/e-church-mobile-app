// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:echurch/app/webview/webview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
      //   colorScheme: ColorScheme.fromSwatch(
      //     accentColor: const Color(0xFF13B9FF),
      //   ),
      // ),
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      // supportedLocales: AppLocalizations.supportedLocales,
      home: SplashScreenView(
        navigateRoute: const MyApp(),
        duration: 10000,
        imageSize: 130,
        imageSrc: 'assets/logo.png',
        text: 'eChurch',
        textType: TextType.ColorizeAnimationText,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 30,
        ),
        colors: const [
          Colors.black,
          Colors.blue,
          Colors.black,
          Colors.blue,
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebViewContainer(
        url: 'https://e-church.herokuapp.com/',
        title: 'eChurch',
      ),
    );
  }
}
