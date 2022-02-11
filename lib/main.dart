import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:taxi_app/view/forgot_password.dart';
import 'package:taxi_app/view/log_in.dart';
import 'package:taxi_app/view/profile_detail.dart';
import 'package:taxi_app/view/reset_password.dart';
import 'package:taxi_app/view/sign_up.dart';
import 'package:taxi_app/view/verify_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taxi App',
      theme:
          ThemeData(primarySwatch: Colors.blue, fontFamily: 'PlusJakartaSans'),
      home: const LogInPage(),
      getPages: [
        GetPage(name: '/login', page: () => const LogInPage()),
        GetPage(name: '/signup', page: () => const SigUpPage()),
        GetPage(name: '/forgotpass', page: () => const ForgotPassword()),
        GetPage(name: '/verify', page: () => const VerifyNumber()),
        GetPage(name: '/resetpass', page: () => const ResetPassword()),
        GetPage(name: '/profile', page: () => const ProfileDetail())
      ],
    );
  }
}
