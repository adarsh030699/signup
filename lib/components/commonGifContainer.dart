import 'package:flutter/material.dart';

class commonGifContainer extends StatelessWidget {
  const commonGifContainer({
    Key? key,
    required this.gif,
  }) : super(key: key);

  final String gif;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400, height: 300, child: Image.asset("assets/$gif.gif"));
  }
}
