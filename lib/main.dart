import 'package:flutter/material.dart';
import 'package:taxi_app/view/profile_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, fontFamily: 'PlusJakartaSans'),
      home: const ProfileDetail(),
    );
  }
}
