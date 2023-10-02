// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pizza_app/resources/colors.dart';

class CustomTextFeild extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  const CustomTextFeild({
    Key? key,
    required this.hinttext,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: CustomColors.blue2Color,
        width: 2,
      ),
    );
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        hintText: hinttext,
        hintStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: border,
        focusedBorder: border,
        filled: true,
        fillColor: CustomColors.blackColor,
      ),
    );
  }
}
