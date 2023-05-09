import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signup/pages/final_page.dart';

import '../components/commonGifContainer.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage(
      {super.key,
      required this.name,
      required this.number,
      required this.email,
      required this.location});

  final String name;
  final String number;
  final String email;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 203, 5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            commonGifContainer(
              gif: 'sodaa',
            ),
            Text(
              "Confirm Your Details",
              style: TextStyle(
                  fontFamily: "yellow", fontSize: 40, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text("Name : $name",
                style: TextStyle(
                    fontFamily: "yellow", fontSize: 25, color: Colors.white)),
            Text("Contact number : $number",
                style: TextStyle(
                    fontFamily: "yellow", fontSize: 25, color: Colors.white)),
            Text("email ID : $email",
                style: TextStyle(
                    fontFamily: "yellow", fontSize: 25, color: Colors.white)),
            Text("Current Location : $location",
                style: TextStyle(
                    fontFamily: "yellow", fontSize: 25, color: Colors.white)),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                SizedBox(
                  // height: 30,
                  width: 280,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => FinalPage()));
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
    );
  }
}
