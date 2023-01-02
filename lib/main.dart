import 'package:flutter/material.dart';

import 'package:design_1_app/screens/home_design.dart';
import 'package:design_1_app/screens/scroll_design.dart';
import 'package:design_1_app/screens/basic_design.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
        theme: ThemeData.dark(),
        initialRoute: 'home_design',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_design': (_) => const ScrollDesign(),
          'home_design': (_) => const HomeDesign()
        });
  }
}
