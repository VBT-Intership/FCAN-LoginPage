import 'package:flutter/material.dart';
import 'package:vbtLoginPage/views/login_screen.dart';
import 'package:vbtLoginPage/views/signIn_screen.dart';
import 'package:vbtLoginPage/views/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: SplashScreen());
  }
}
