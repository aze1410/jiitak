import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/features/home/presentations/pages/home_screen.dart';
import 'package:jiitak/features/home/presentations/pages/initial_screen.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(context),
      home: InitialPage(),
    );
  }
}
