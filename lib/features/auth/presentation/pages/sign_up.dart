import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_in.dart';
import 'package:nike_app/features/shoe-details/presentation/pages/detail_screen.dart';
import '../../../../common/widgets/back_button.dart';
import '../widgets/subtitle.dart';
import '../widgets/title.dart';

import '../widgets/custom_button.dart';
import '../widgets/google_button.dart';
import '../widgets/input_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static const String route = '/signup';

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
                  onpress: () => context.go(SignIn.route),
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
              onpressed: () => context.go(ShoeDetail.route),
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
