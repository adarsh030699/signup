import 'package:flutter/material.dart';
import '../components/CommonTextFormField.dart';
import '../components/commonGifContainer.dart';
import '../components/commonNextButton.dart';
import 'num_email_page.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _name = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 190, 113),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                commonGifContainer(
                  gif: 'lime',
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30.0),
                      child: Text(
                        "Let us, \n Know your Name ",
                        style: TextStyle(
                            fontFamily: "yellow",
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CommonTextFormField(
                  controller: _name,
                  prefixIcon: (Icons.person),
                  hintText: 'Enter Your Name',
                ),
                SizedBox(
                  height: 70,
                ),
                CommonNextButtom(name: _name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
