import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              height: 600,
              child: Image.asset("assets/mix.gif"),
            )
          ],
        ),
      ),
    );
  }
}
