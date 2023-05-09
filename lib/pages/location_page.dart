import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/CommonTextFormField.dart';
import 'Confirmation_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage(
      {super.key,
      required this.name,
      required this.email,
      required this.number});

  final String name;
  final String email;
  final String number;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _location = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 107, 58),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 400,
                    height: 400,
                    child: Image.asset("assets/rum.gif")),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        " Almost done, \n Currently at ? ",
                        style: TextStyle(
                            fontFamily: "yellow",
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CommonTextFormField(
                  controller: _location,
                  prefixIcon: (Icons.location_city),
                  hintText: 'Enter Your Location',
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      // height: 30,
                      width: 280,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ConfirmationPage(
                                      email: email,
                                      location: _location.text,
                                      name: name,
                                      number: number,
                                    )));
                      }),
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 15,
                                  offset: const Offset(0, 5))
                            ],
                          ),
                          child: Icon(Icons.arrow_right)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
