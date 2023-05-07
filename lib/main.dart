import 'package:book_me/pages/login.dart';
import 'package:flutter/material.dart';

import 'configs/screen_size_config/screen_size_config.dart';
import 'configs/theme/theme.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

const themeColor = Color(0xff003b95);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: bookme,
      home: const LoginPage(),
    );
  }
}
