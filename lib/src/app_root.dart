import 'package:flutter/material.dart';
import 'package:petology/screens/adaption_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdaptionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
