// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:welcome_screen/screens/signup.dart';


import 'package:welcome_screen/utilities/constant.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          icon: Image(
              width: 24,
              color: Colors.white,
              image: Svg(
                'assets/back_arrow.svg',
              )),
          onPressed: () {
             Get.back();
          },
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back,',
                    style: kHeadline,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You've been missed!",
                    style: kHeadline.copyWith(fontSize: 22),
                  ),
                  SizedBox(height: 60),
                  TextField(
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: 'Phone, email or username',
                      hintStyle: kBodyText,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    obscureText: isPasswordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: kBodyText,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont't have an account? ",
                  style: kBodyText,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>SignUp());
                  },
                  child: Text(
                    'Register',
                    style: kBodyText.copyWith(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.black12,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: kButtonText.copyWith(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
