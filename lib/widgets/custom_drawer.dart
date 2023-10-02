// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pizza_app/features/home/screens/cart_screen.dart';
import 'package:pizza_app/features/home/screens/home_screen.dart';

import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/custom_social_button.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.redColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Hello Venu',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                ),
                subtitle: Text(
                  'Lets fun with pizzaes',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: CustomSocialButton(
                  image: 'assets/icons/ic_baseline-apple.png',
                  width: 30,
                  color: CustomColors.redColor,
                  imagecolor: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: CustomNavListtile(
                  icon: Icons.shopping_cart,
                  text: 'Shop',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: CustomNavListtile(
                  icon: Icons.favorite,
                  text: 'Favorites',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CartScreen()));
                },
                child: CustomNavListtile(
                  icon: Icons.card_travel,
                  text: 'Cart',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: CustomNavListtile(
                  icon: Icons.history,
                  text: 'History',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: CustomNavListtile(
                  icon: Icons.more_horiz,
                  text: 'More',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNavListtile extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomNavListtile({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
