import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/CommonTextFormField.dart';
import '../components/commonGifContainer.dart';
import 'location_page.dart';

class NumEmail extends StatelessWidget {
  const NumEmail({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _number = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 197, 184),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                commonGifContainer(
                  gif: 'cocktail',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        " Hi $name,  \n verification Detail",
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
                  controller: _email,
                  prefixIcon: (Icons.mail),
                  hintText: 'Enter Your E-mail',
                ),
                CommonTextFormField(
                  controller: _number,
                  prefixIcon: (Icons.call),
                  hintText: 'Enter Your Number',
                ),
                SizedBox(
                  height: 50,
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
                                builder: (_) => LocationPage(
                                      email: _email.text,
                                      name: name,
                                      number: _number.text,
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
