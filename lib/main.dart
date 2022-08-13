import 'package:flutter/material.dart';
import 'package:hr_appb/utils/colors.dart';
import 'package:hr_appb/view/login_view.dart';
import 'package:hr_appb/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: kPrimaryColor, fontFamily: 'DMSans'),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
