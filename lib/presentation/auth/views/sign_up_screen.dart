import 'package:clot_ecommerce/common/helper/navigator/app_nvigator.dart';
import 'package:clot_ecommerce/common/widgets/app_Button.dart';
import 'package:clot_ecommerce/common/widgets/appbar.dart';
import 'package:clot_ecommerce/presentation/auth/views/sign_in_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            signUpText(),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter First Name',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Last Name',
              ),
            ),
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
        text: 'Already have an account? ',
      ),
      TextSpan(
        text: 'Sign In',
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            AppNavigator.push(context, const SignInScreen());
          },
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }

  Text signUpText() => Text(
        'Sign Up',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      );
}
