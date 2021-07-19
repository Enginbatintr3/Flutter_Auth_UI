import 'package:flutter/material.dart';
import 'package:richlineinterface/screens/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rich Line",
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData.dark(),
    );
  }
}
