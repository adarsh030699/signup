import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  const CommonTextFormField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintStyle: TextStyle(color: Colors.black),
            labelText: hintText,
            labelStyle: TextStyle(color: Colors.white),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 50),
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white, width: 3),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white, width: 3),
            )),
      ),
    );
  }
}
