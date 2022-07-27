import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:petology/screens/home_screen_components/fifth_container.dart';
import 'package:petology/screens/home_screen_components/first_container.dart';
import 'package:petology/screens/home_screen_components/fourth_containter.dart';
import 'package:petology/screens/home_screen_components/second_containter.dart';
import 'package:petology/screens/home_screen_components/third_containter.dart';
import 'package:petology/services/api.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/footer.dart';

import '../models/filters.dart';
import '../models/pet.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService api = ApiService();
  String test = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(test),
            ElevatedButton(
              onPressed: () async {
                Uint8List? bytesFromPicker =
                    await ImagePickerWeb.getImageAsBytes();
                String data = await api.makePetReq(
                  1,
                  "data:image/jpg;base64,${base64Encode(bytesFromPicker!)}",
                  "location",
                  "02266453925",
                );
                print(data);
                setState(() {
                  test = data;
                });
              },
              child: Text("Test"),
            ),
            FirstContainer(),
            SecondContainer(),
            ThirdContainer(),
            FourthContainer(),
            FifthContainer(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
