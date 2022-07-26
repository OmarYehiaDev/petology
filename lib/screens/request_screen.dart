import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/default_drop_down.dart';
import 'package:petology/shared/footer.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/Icon material-pets left hand.png',
                    width: 200,
                    height: 200,
                    color: HexColor('#FFE3C5'),
                  ),
                  SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 134,
                      ),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: HexColor("#180701"),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Request',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset('assets/images/dog 6.png',
                                width: 300,
                                height: 300,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10,right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.3),offset: Offset(0, 2),blurRadius: 2
                                    )
                                  ]

                                ),
                                
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 3 ),
                                  child: TextFormField(

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Name',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Category must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              DefaultDropDownButton(
                                text: 'Category',
                                items: ['dogs','cats'],
                                validateText: 'category must not be empty',),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Year',
                                      items: ['2021','2022'],
                                      validateText: 'year must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Month',
                                      items: ['july','jun','nov'],
                                      validateText: 'month must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Size',
                                      items: ['50','260'],
                                      validateText: 'Size must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Bread',
                                      items: ['1','2','3'],
                                      validateText: 'bread must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Gender',
                                      items: ['Male','Female'],
                                      validateText: 'gender must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Bread',
                                      items: ['1','2','3'],
                                      validateText: 'Bread must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Hair Length',
                                      items: ['1','10'],
                                      validateText: 'Hair Length must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Care & Behavior',
                                      items: ['good','bad'],
                                      validateText: 'Care & Behavior must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'House Traind',
                                      items: ['location','country'],
                                      validateText: 'House Traind must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Color',
                                      items: ['grey','black','white'],
                                      validateText: 'Color must not be empty',),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Text(
                                  'Detect your current location',
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10.0),
                                    ),
                                  ),
                                  labelText: 'Location',
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Align(
                                      widthFactor: 1.0,
                                      heightFactor: 1.0,
                                      child: Icon(Icons.location_on,
                                        color: HexColor("#492F24"),
                                      ),
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    print('Location must not be empty');
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10.0),
                                    ),
                                  ),
                                  labelText: 'Phone',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    print('Phone must not be empty');
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
