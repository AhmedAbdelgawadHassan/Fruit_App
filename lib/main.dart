// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruit/views/splash_view.dart';

void main()
{
  runApp(const Fruit_App());
}

class Fruit_App extends StatelessWidget {
  const Fruit_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView()
    );
  }
}