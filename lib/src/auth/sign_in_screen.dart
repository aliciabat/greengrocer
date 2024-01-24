import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/auth/sign_up_screen.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // App name
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 40,
                        ),
                        children: [
                          const TextSpan(
                            text: 'Green',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Grocer',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Categories
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Fruits'),
                            FadeAnimatedText('Vegetables'),
                            FadeAnimatedText('Meats'),
                            FadeAnimatedText('Cereals'),
                            FadeAnimatedText('Dairy'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // login form
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // email
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),
                    // password
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Password',
                      isSecret: true,
                    ),
                    // sign in
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: CustomColors.customContrastColor),
                        ),
                      ),
                    ),
                    // divider
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 1,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Or'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // create account
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) {
                              return SignUpScreen();
                            }),
                          );
                        },
                        child: const Text(
                          'Create account',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
