import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: gFormHight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text(gFullName),
              prefixIcon: Icon(Icons.person_outline_outlined),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(gEmail),
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(gPhoneNumber),
              prefixIcon: Icon(Icons.phone_android_outlined),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(gPassword),
              prefixIcon: Icon(Icons.fingerprint_outlined),
            ),
          ),
          const SizedBox(
            height: gFormHight - 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                gSigneUp.toUpperCase(),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
