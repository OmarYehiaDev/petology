import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/screens/adaption_screen_components/first_container_adaption.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/default_drop_down.dart';
import 'package:petology/shared/footer.dart';

class AdaptionScreen extends StatefulWidget {
  AdaptionScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionScreen> createState() => _AdaptionScreenState();
}

class _AdaptionScreenState extends State<AdaptionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildColumn(name: 'Bread',Drop: ['1','2','3'], ),
                  buildColumn(name: 'Age',Drop: ['4','5','6']),
                  buildColumn(name: 'Size',Drop: ['7','8','9']),
                  buildColumn(name: 'Good with',Drop: ['10','11','12']),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildColumn(name: 'Gender', Drop: ['Male','Female']),
                  //SizedBox(width: 20,),
                  buildColumn(name: 'Color',Drop: ['grey','black','white']),
                  //  SizedBox(width: 20,),
                  buildColumn(name: 'Hair Length',Drop: ['19','20','21']),
                  // SizedBox(width: 20,),
                  buildColumn(name: 'Care & Behavior',Drop: ['22','23','24']),
                  //   SizedBox(width: 20,)
                ],
              ),
            ),
            FirstContainerAdaptation(),
            SizedBox(
              height: 60,
            ),
            FirstContainerAdaptation(),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Show more...',
                  style: TextStyle(
                    color: HexColor('#492F24'),
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  Column buildColumn( {
    required String name,
    required List<String> Drop,
  }) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: HexColor('#492F24'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20))),
          child: DefaultDropDownButton(
            text: name,
            items: Drop,
            validateText: 'must not be empty',),
        ),
      ],
    );
  }
}
