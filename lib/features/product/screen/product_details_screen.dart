import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pizza_app/features/home/screens/cart_screen.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/custom_sizecard.dart';
import 'package:pizza_app/widgets/custom_social_button.dart';

import '../../../widgets/custom_pizza_card.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Details Screen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const CartScreen()),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.card_travel,
                ),
              ),
            ),
          ],
          leading: SvgPicture.asset(
            'assets/icons/ frame.svg',
            width: 3,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              // height: 250,
              child: SingleChildScrollView(
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
                    const SizedBox(width: 15),
                    const Text(
                      "Cheesy bites trio shrimp pizza",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      "Shrimp, onion, red capsicum, pineapple, black olive, parsley,Mozzarella cheese, string cheese two color, Sweet chili sauce. Cheesy Bites Trio.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
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
                        Row(
                          children: [
                            CustomSocialButton(
                              image: 'assets/icons/ic_sharp-facebook.png',
                              imagecolor: Colors.white,
                              width: 45,
                              color: CustomColors.redColor,
                            ),
                            SizedBox(width: 20),
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
                    NewWidget(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // MyWidget(),
        SizedBox(height: 30),
        Text(
          'Suggested Pizzaes',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomPizzaCard(),
              CustomPizzaCard(),
              CustomPizzaCard(),
              CustomPizzaCard(),
              CustomPizzaCard(),
            ],
          ),
        ),
      ],
    );
  }
}
