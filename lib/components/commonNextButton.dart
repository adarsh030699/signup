import 'package:flutter/material.dart';

import '../pages/num_email_page.dart';

class CommonNextButtom extends StatelessWidget {
  const CommonNextButtom({
    Key? key,
    required TextEditingController name,
  })  : _name = name,
        super(key: key);

  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          // height: 30,
          width: 280,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => NumEmail(
                          name: _name.text,
                        )));
          },
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}
