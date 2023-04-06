import 'package:flutter/material.dart';

import '../../../common/back_button.dart';
import '../components/custom_button.dart';
import '../components/google_button.dart';
import '../components/input_field.dart';
import '../components/subtitle.dart';
import '../components/text_button.dart';
import '../components/title.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                KBackButton(),
              ],
            ),
            const KTitle(
              text: 'Hello Again!',
            ),
            const SubTitle(
              text: 'Fill your Details Or Continue With Social Media',
            ),
            // const SizedBox(
            //   height: 20,
            // ),
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
            Row(
              children: const [
                Spacer(),
                TButton(
                  text: 'Recovery Password',
                ),
              ],
            ),
            Flexible(
              fit: FlexFit.tight,
              child: CButton(
                text: 'Sign in',
                onpressed: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: GButton(
                text: 'Sign In With Google',
                onpress: () {},
              ),
            ),
            const Spacer(),
            const Flexible(
                fit: FlexFit.tight,
                child: TButton(text: 'New User? Create Account'))
          ],
        ),
      ),
    );
  }
}
