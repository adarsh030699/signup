import 'package:flutter/material.dart';

import 'package:signup/pages/name_page.dart';

import '../components/commonGifContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 150, 165),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: Text(
              "Juicy\n",
              style: TextStyle(
                fontSize: 70,
                fontFamily: "yellow",
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Colors.black, // shadow color
                    offset: Offset(4.0, 6.0), // how much shadow will be shown
                  ),
                ],
              ),
            ),
          ),
          commonGifContainer(
            gif: 'wine',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => NamePage()));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, 10))
                  ],
                ),
                child: Text(
                  "Get your drink",
                  style: TextStyle(
                      color: Color.fromARGB(255, 244, 150, 165),
                      fontSize: 20,
                      fontFamily: "paci"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
