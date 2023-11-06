import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/features/auth/screens/signup/sign_up_footer_widget.dart';
import 'package:fitnesstracker/source/features/auth/screens/signup/sign_up_header_widget.dart';
import 'package:fitnesstracker/source/features/auth/screens/signup/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var hight = mediaQuery.size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(gDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignUpHeaderWidget(height: hight),
                const SignUpForm(),
                const SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
