import 'package:flutter/material.dart';
import 'package:flutter_2nd_project/constants/gaps.dart';
import 'package:flutter_2nd_project/constants/sizes.dart';
import 'package:flutter_2nd_project/features/authentication/sign_up_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok Clone',
      theme: ThemeData(primaryColor: Color(0xFFE9435A)), // 틱톡 색상
      home: const SignUpScreen(),
    );
  }
}
