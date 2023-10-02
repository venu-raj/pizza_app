// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String image;
  final double width;
  final Color color;
  final Color imagecolor;
  const CustomSocialButton({
    Key? key,
    required this.image,
    required this.width,
    required this.color,
    required this.imagecolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),

      // decoration: new BoxDecoration(
      //   color: Colors.black,
      //   shape: BoxShape.circle,
      //   border: Border.all(width: 5.0, color: Colors.white),

      child: Image.asset(
        image,
        color: imagecolor,
      ),
    );
  }
}
