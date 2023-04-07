import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/common/back_button.dart';
import 'package:nike_app/common/pages.dart';
import 'package:nike_app/features/signin/components/subtitle.dart';
import 'package:nike_app/features/signin/components/title.dart';

import '../components/custom_button.dart';
import '../components/google_button.dart';
import '../components/input_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          children: [
            Row(
              children: [
                KBackButton(
                  onpress: () => context.go('/${Screens.signin.name}'),
                )
              ],
            ),
            const KTitle(text: 'Register Account'),
            const SubTitle(
                text: 'Fill your Details Or Continue With Social Media'),
            InputField(
              fieldTitle: 'Your Name',
              placeHolderText: 'XXXXXXXX',
              controller: nameController,
            ),
            InputField(
              controller: emailController,
              fieldTitle: 'Email Addresss',
              placeHolderText: 'xyz@gmail.com',
            ),
            InputField(
              controller: passwordController,
              fieldTitle: 'Password',
              placeHolderText: '12345678',
              isObscured: true,
            ),
            CButton(
              text: 'Sign Up',
              hPadding: 135,
              onpressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            GButton(
              text: 'Sign Up With Google',
              onpress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
