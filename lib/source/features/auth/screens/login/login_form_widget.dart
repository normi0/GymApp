import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/screens/forgotepassword/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

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
            height: gFormHight - 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => Get.to(() => const ForgotPassword()),
              child: const Text(gForgetPassword),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                gLogin.toUpperCase(),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
