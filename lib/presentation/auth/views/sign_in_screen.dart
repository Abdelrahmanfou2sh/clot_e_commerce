import 'package:clot_ecommerce/common/helper/navigator/app_nvigator.dart';
import 'package:clot_ecommerce/common/widgets/app_Button.dart';
import 'package:clot_ecommerce/presentation/auth/views/enter_password.dart';
import 'package:clot_ecommerce/presentation/auth/views/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            signInText(),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BasicAppButton(
              onPressed: () {
                AppNavigator.push(context, const EnterPasswordScreen());
              },
              title: 'Continue',
            ),
            const SizedBox(
              height: 20,
            ),
            Center(child: createAcc(context)),
          ],
        ),
      ),
    );
  }

  RichText createAcc(context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Don\'t have an account? ',
      ),
      TextSpan(
        text: 'Create One',
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            AppNavigator.push(context, const SignUpScreen());
          },
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }

  Text signInText() => Text(
        'Sign In',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      );
}
