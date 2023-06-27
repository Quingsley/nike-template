import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/auth/presentation/pages/forgot_password.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_up.dart';
import 'package:nike_app/features/home/presentation/pages/home_screen.dart';
import '../../../../common/widgets/back_button.dart';
import '../widgets/custom_button.dart';
import '../widgets/google_button.dart';
import '../widgets/input_field.dart';
import '../widgets/subtitle.dart';
import '../widgets/text_button.dart';
import '../widgets/title.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  static const String route = '/signin';

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
                  onpress: () => context.go(ForgotPassword.route),
                ),
              ],
            ),
            CButton(
              text: 'Sign in',
              hPadding: 135,
              onpressed: () {
                context.go(HomeScreen.route);
              },
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
                  onpress: () => context.go(SignUp.route),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
