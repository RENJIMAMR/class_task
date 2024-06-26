import 'package:class_task/view/login_screen/login_screen.dart';
import 'package:class_task/view/registration_screen/registration_screen.dart';
import 'package:flutter/material.dart';

String storedPassword = '';
String storedEmail = '';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
