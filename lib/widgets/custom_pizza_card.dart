import 'package:flutter/material.dart';
import 'package:pizza_app/features/product/screen/product_details_screen.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/custom_sizecard.dart';
import 'package:pizza_app/widgets/custom_social_button.dart';

class CustomPizzaCard extends StatelessWidget {
  const CustomPizzaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          // height: 250,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProductDetailsScreen(),
                ),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pic1 4.png',
                  height: 100,
                ),
                const SizedBox(height: 15),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('Classic'),
                ),
                const SizedBox(width: 9),
                const Text(
                  "Cheesy bites trio shrimp pizza",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 9),
                Row(
                  children: [
                    CustomSizeCard(text: 'S', onpressd: () {}),
                    const SizedBox(width: 9),
                    CustomSizeCard(text: 'M', onpressd: () {}),
                    const SizedBox(width: 9),
                    CustomSizeCard(text: 'L', onpressd: () {}),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$23",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomSocialButton(
                      image: 'assets/icons/ic_sharp-facebook.png',
                      imagecolor: Colors.white,
                      width: 45,
                      color: CustomColors.redColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
