import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/back_button.dart';
import '../../../common/pages.dart';
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
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                KBackButton(
                  onpress: () => context.go("/"),
                ),
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
              children: [
                const Spacer(),
                TButton(
                  text: 'Recovery Password',
                  color: Colors.black26,
                  boldness: FontWeight.normal,
                  onpress: () => context.go('/${Screens.forgotPassword.name}'),
                ),
              ],
            ),
            CButton(
              text: 'Sign in',
              hPadding: 135,
              onpressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            GButton(
              text: 'Sign In With Google',
              onpress: () {},
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SubTitle(text: 'New User?'),
                TButton(
                  text: 'Create Account',
                  onpress: () => context.go("/${Screens.signup.name}"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
