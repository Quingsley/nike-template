import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../common/back_button.dart';
import '../../../common/pages.dart';
import '../components/alert.dart';
import '../components/custom_button.dart';
import '../components/input_field.dart';
import '../components/subtitle.dart';
import '../components/title.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                KBackButton(
                  onpress: () => context.go('/${Screens.signin.name}'),
                )
              ],
            ),
            const KTitle(text: 'Forgot Password'),
            const SubTitle(
                text: 'Enter your Emaail Account To Reset Your Password'),
            InputField(
              fieldTitle: 'Email Address',
              placeHolderText: 'xyz@gmail.com',
              controller: emailController,
            ),
            CButton(
              text: 'Reset Password',
              onpressed: () async {
                await openAlert(context)
                    .then((_) => context.go('/${Screens.otp.name}'));
              },
            )
          ],
        ),
      ),
    );
  }
}
