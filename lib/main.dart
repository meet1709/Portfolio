import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'resource/constants.dart';
import 'splash/spalshview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white).copyWith(
          bodyText1: const TextStyle(color: bodyTextColor),
          bodyText2: const TextStyle(color: bodyTextColor),
        )
      ),
      home: const SplashView(),
    );
  }
}

