import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/screens/login/login_header_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(gDefaultSize),
          child: Column(
            children: [
              const SizedBox(
                height: gDefaultSize * 4,
              ),
              const FormHeaderWidget(
                image: gForgotpasswordImage,
                title: gForgotPasswordTitle,
                subtitle: gForgotPasswordSubtitle,
                crossAxisAlighnment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: gFormHight,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(gEmail),
                      hintText: gEmail,
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(gNext),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      )),
    );
  }
}
