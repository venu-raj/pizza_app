// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final Color textcolor;
  final VoidCallback onpressd;

  const LoginButton({
    required this.text,
    required this.width,
    required this.color,
    required this.textcolor,
    required this.onpressd,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressd,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(width, 50),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
