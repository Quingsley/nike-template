import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/auth/presentation/pages/otp_verification.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_in.dart';
import '../../../../common/widgets/back_button.dart';
import '../widgets/alert.dart';
import '../widgets/custom_button.dart';
import '../widgets/input_field.dart';
import '../widgets/subtitle.dart';
import '../widgets/title.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  static const String route = '/forgot-password';

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
                  onpress: () => context.go(SignIn.route),
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
                await openAlert(context).then((_) => context.go(OTPPage.route));
              },
            )
          ],
        ),
      ),
    );
  }
}
