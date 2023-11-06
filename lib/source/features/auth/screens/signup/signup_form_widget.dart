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
            decoration: InputDecoration(
              prefix: const Icon(Icons.person_outline_outlined),
              labelText: gFullName,
              hintText: gFullName,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefix: const Icon(Icons.email_outlined),
              labelText: gEmail,
              hintText: gEmail,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefix: const Icon(Icons.phone_android_outlined),
              labelText: gPhoneNumber,
              hintText: gPhoneNumber,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefix: const Icon(Icons.fingerprint),
              labelText: gPassword,
              hintText: gPassword,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              suffixIcon: const IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye),
              ),
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
