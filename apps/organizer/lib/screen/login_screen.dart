import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: context.screenWidth * 0.2),
          Text('Login', style: context.titleLarge),
          SizedBox(height: context.screenWidth * 0.6),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: context.screenWidth * 0.09),
            child: CustomTextField(
              hintText: 'Email',
              controller: TextEditingController(),
              validation: (String value) {},
            ),
          ),
          const SizedBox(height: 16),
          PrimaryBtn(
            title: 'Login',
            callback: () {},
          ),
        ],
      ),
    );
  }
}
