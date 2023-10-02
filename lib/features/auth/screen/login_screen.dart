import 'package:flutter/material.dart';
import 'package:pizza_app/features/auth/repository/auth_repository.dart';
import 'package:pizza_app/features/auth/screen/signup_screen.dart';
import 'package:pizza_app/resources/colors.dart';
import 'package:pizza_app/widgets/custom_social_button.dart';
import 'package:pizza_app/widgets/custom_textfeild.dart';
import 'package:pizza_app/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  loginUser() {
    AuthRepository().loginUser(
      context: context,
      email: _emailcontroller.text,
      password: _passwordcontroller.text,
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
                  'Login here',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: CustomColors.blue2Color,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Welcome back you\'ve been missed!',
                  maxLines: 2,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 55),
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
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: CustomColors.blue2Color,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                LoginButton(
                  text: 'Sign In',
                  width: double.infinity,
                  color: CustomColors.blue2Color,
                  textcolor: CustomColors.whiteColor,
                  onpressd: () => loginUser(),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const SignupScreenScreen()),
                      ),
                    );
                  },
                  child: const Text(
                    'Create new account',
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
                      imagecolor: CustomColors.whiteColor,
                      width: 55,
                      color: CustomColors.blackColor,
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
