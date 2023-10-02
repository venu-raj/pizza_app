// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pizza_app/resources/colors.dart';

class CustomSizeCard extends StatelessWidget {
  final String text;
  final VoidCallback onpressd;
  const CustomSizeCard({
    Key? key,
    required this.text,
    required this.onpressd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 20,
      // height: 20,
      // onPressed: onpressd,
      // style: ElevatedButton.styleFrom(
      //   backgroundColor: CustomColors.redColor,
      //   fixedSize: const Size(10, 10),
      //   shape: const RoundedRectangleBorder(
      //     side: BorderSide(color: Colors.white),
      //     borderRadius: BorderRadius.all(Radius.circular(100)),
      //   ),
      // ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: CustomColors.redColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: CustomColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
