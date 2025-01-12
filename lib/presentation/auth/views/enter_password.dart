import 'package:clot_ecommerce/common/helper/navigator/app_nvigator.dart';
import 'package:clot_ecommerce/common/widgets/app_Button.dart';
import 'package:clot_ecommerce/common/widgets/appbar.dart';
import 'package:clot_ecommerce/presentation/auth/views/reset_password_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordScreen extends StatelessWidget {
  const EnterPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            enterPasswordText(),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BasicAppButton(
              onPressed: () {},
              title: 'Continue',
            ),
            const SizedBox(
              height: 20,
            ),
            Center(child: resetPassword(context)),
          ],
        ),
      ),
    );
  }

  RichText resetPassword(context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Forget Your Password? ',
      ),
      TextSpan(
        text: 'Reset Now!',
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            AppNavigator.push(context, const ResetPasswordScreen());
          },
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }

  Text enterPasswordText() => Text(
        'Enter Password',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      );
}
