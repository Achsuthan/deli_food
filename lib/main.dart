import 'package:deli_food/screens/code_verfication_screen.dart';
import 'package:deli_food/screens/new_password_screen.dart';
import 'package:flutter/material.dart';

import './screens/register_screen.dart';
import './screens/signin_screen.dart';
import './screens/landing_screen.dart';
import './screens/forgot_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        LandingScreen.routerName: (_) => LandingScreen(),
        RegisterScreen.routerName: (_) => RegisterScreen(),
        SignInScreen.routerName: (_) => SignInScreen(),
        ForgotPasswordScreen.routerName: (_) => ForgotPasswordScreen(),
        CodeVerificationScreen.routerName: (_) => CodeVerificationScreen(),
        NewPasswordScreen.routerName: (_) => NewPasswordScreen(),
      },
    );
  }
}
