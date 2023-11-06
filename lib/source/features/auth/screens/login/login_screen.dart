import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/features/auth/screens/login/login_footer_widget.dart';
import 'package:fitnesstracker/source/features/auth/screens/login/login_form_widget.dart';
import 'package:fitnesstracker/source/features/auth/screens/login/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const LoginForm(),
                LoginHeaderWidget(hight: hight),
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
