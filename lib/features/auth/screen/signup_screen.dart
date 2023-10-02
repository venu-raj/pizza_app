import 'package:flutter/material.dart';
import 'package:pizza_app/features/auth/repository/auth_repository.dart';
import 'package:pizza_app/features/auth/screen/login_screen.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/custom_social_button.dart';
import 'package:pizza_app/widgets/custom_textfeild.dart';
import 'package:pizza_app/widgets/login_button.dart';

class SignupScreenScreen extends StatefulWidget {
  const SignupScreenScreen({super.key});
  @override
  State<SignupScreenScreen> createState() => _SignupScreenScreenState();
}

class _SignupScreenScreenState extends State<SignupScreenScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _usernamecontroller.dispose();
    _passwordcontroller.dispose();
  }

  sinupUser() async {
    AuthRepository().createUser(
      context: context,
      email: _emailcontroller.text,
      password: _passwordcontroller.text,
      username: _usernamecontroller.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.blue2Color,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Create an account so you can explore all the pizzaes',
                  maxLines: 2,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 55),
                CustomTextFeild(
                  hinttext: 'Username',
                  controller: _usernamecontroller,
                ),
                const SizedBox(height: 20),
                CustomTextFeild(
                  hinttext: 'Email',
                  controller: _emailcontroller,
                ),
                const SizedBox(height: 20),
                CustomTextFeild(
                  hinttext: 'Password',
                  controller: _passwordcontroller,
                ),
                const SizedBox(height: 20),
                LoginButton(
                  text: 'Create Account',
                  width: double.infinity,
                  color: CustomColors.blue2Color,
                  textcolor: CustomColors.whiteColor,
                  onpressd: () => sinupUser(),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const LoginScreen()),
                      ),
                    );
                  },
                  child: const Text(
                    'Already have an account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Or Continue With',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: CustomColors.blue2Color),
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialButton(
                      image: 'assets/icons/ph_google-logo-bold.png',
                      width: 55,
                      color: CustomColors.blackColor,
                      imagecolor: CustomColors.whiteColor,
                    ),
                    SizedBox(width: 10),
                    CustomSocialButton(
                      image: 'assets/icons/ic_sharp-facebook.png',
                      imagecolor: CustomColors.whiteColor,
                      width: 55,
                      color: CustomColors.blackColor,
                    ),
                    SizedBox(width: 10),
                    CustomSocialButton(
                      image: 'assets/icons/ic_baseline-apple.png',
                      imagecolor: CustomColors.whiteColor,
                      width: 55,
                      color: CustomColors.blackColor,
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
