import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          'https://www.toronto-classifieds.ca/uploads/vic/1559540451618_18AB70401560C9BC3BE23C6D205B25E2/ayurved.jpg',
          fit: BoxFit.cover,
        ),
      ),
      bottomSheet: SizedBox(
        height: 700,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Login or register to book\nyour appointments',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF404040)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Email',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF404040))),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0XFFD9D9D9),
                    labelText: 'Enter your Email',
                    labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0XFF000000)),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Password',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF404040))),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0XFFD9D9D9),
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0XFF000000)),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: const Color(0XFF006837),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 5),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              RichText(
                text: TextSpan(
                  text:
                      'By creating or logging in to your account you are agreeing\n      with our ',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: const TextStyle(
                          color: Color(0XFF0028FC),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          log('Terms and Conditions tapped');
                        },
                    ),
                    const TextSpan(
                      text: ' and ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                          color: Color(0XFF0028FC),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          log('Privacy Policy tapped');
                        },
                    ),
                    const TextSpan(
                      text: '.',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
