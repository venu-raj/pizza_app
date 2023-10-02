import 'package:flutter/material.dart';
import 'package:pizza_app/features/auth/screen/login_screen.dart';
import 'package:pizza_app/features/auth/screen/signup_screen.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/login_button.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/images/Work from home.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                '''Order Whatever You Want''',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                  color: CustomColors.blue2Color,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              "Explore all the food based on your interests amd tastes",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LoginButton(
                    text: 'login',
                    width: 60,
                    color: CustomColors.blue2Color,
                    textcolor: CustomColors.whiteColor,
                    onpressd: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  LoginButton(
                    text: 'Register',
                    width: 60,
                    color: Colors.white,
                    textcolor: const Color.fromARGB(255, 0, 0, 0),
                    onpressd: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignupScreenScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
