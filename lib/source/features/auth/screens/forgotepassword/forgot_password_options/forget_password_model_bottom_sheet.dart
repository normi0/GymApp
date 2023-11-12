import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/screens/forgotepassword/forgot_password_mail/forgot_password_mail.dart';
import 'package:fitnesstracker/source/features/auth/screens/forgotepassword/forgot_password_options/forget_password_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  // ignore: non_constant_identifier_names
  static Future<dynamic> BuildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        builder: (context) => Container(
              padding: const EdgeInsets.all(gDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gForgotPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    gForgotPasswordSubtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ForgetPAsswordBtnWidget(
                    btnIcon: Icons.mark_email_read_outlined,
                    title: gEmail,
                    subtitle: gResetViaMail,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => const ForgotPasswordMailScreen());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ForgetPAsswordBtnWidget(
                    btnIcon: Icons.mobile_friendly_rounded,
                    title: gPhoneNumber,
                    subtitle: gResetViaMail,
                    onTap: () {},
                  ),
                ],
              ),
            ));
  }
}
