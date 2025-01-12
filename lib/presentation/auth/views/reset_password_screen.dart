import 'package:clot_ecommerce/common/widgets/app_Button.dart';
import 'package:clot_ecommerce/common/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          forgotPasswordText(),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
            ),
          ),
          const SizedBox(height: 20),
          BasicAppButton(
            onPressed: () {},
            title: 'Send',
          ),
        ]),
      ),
    );
  }
}

Text forgotPasswordText() => Text(
      'Enter Password',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
