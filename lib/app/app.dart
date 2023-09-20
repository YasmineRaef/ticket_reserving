import 'package:first_app/presentation/auth.dart';
import 'package:first_app/presentation/sign_up.dart';
import 'package:flutter/material.dart';
import '../presentation/bottom_bar.dart';
import '../utils/appstyles.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const Auth(),
      routes: {
        'signupScreen':(context) => const SignUpScreen(),
      },
    );
  }
}