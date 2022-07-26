import 'package:flutter/material.dart';
import 'package:petology/screens/request_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RequestScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
