import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/screens/forgotepassword/forgot_password_options/forget_password_model_bottom_sheet.dart';
import 'package:flutter/material.dart';

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
            decoration: const InputDecoration(
              label: Text(gEmail),
              prefixIcon: Icon(Icons.person_outline_outlined),
            ),
          ),
          const SizedBox(
            height: gFormHight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              labelText: gPassword,
              hintText: gPassword,
              suffixIcon: IconButton(
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
              onPressed: () {
                ForgetPasswordScreen.BuildShowModalBottomSheet(context);
              },
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
