import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/login_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('piZZA'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 30,
            ),
          )
        ],
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () => openDrawer(context),
              child: SvgPicture.asset(
                'assets/icons/ frame.svg',
                width: 3,
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Your Cart',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/pic1 4.png'),
                            ),
                            title: Text(
                              "Cheesy bites trio shrimp pizza",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            trailing: Text(
                              '\$12.0',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal (4 Items)",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "\$102",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      LoginButton(
                        text: 'Checkout',
                        width: double.infinity,
                        color: CustomColors.redColor,
                        textcolor: Colors.white,
                        onpressd: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
