// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:welcome_screen/screens/login.dart';
import 'package:welcome_screen/utilities/constant.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          child: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Registration,',
                          style: kHeadline,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kindly fill in your details",
                          style: kHeadline.copyWith(fontSize: 22),
                        ),
                        SizedBox(height: 60),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            hintText: 'Name',
                            hintStyle: kBodyText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            hintText: 'Email',
                            hintStyle: kBodyText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            hintText: 'Phone',
                            hintStyle: kBodyText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
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
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: kBodyText,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(()=>LoginScreen());
                        },
                        child: Text(
                          'Sign In',
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
            ),
          )
        ],
      )),
    );
  }
}
