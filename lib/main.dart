import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(DetailsApp());
}

class DetailsApp extends StatelessWidget {
  const DetailsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
