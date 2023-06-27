import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_in.dart';
import '../../../../common/widgets/back_button.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_button.dart';
import '../widgets/timer_countdown.dart';
import '../widgets/title.dart';

import '../widgets/inputcode_field.dart';
import '../widgets/subtitle.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});
  static const String route = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 15,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  KBackButton(
                    onpress: () => context.go(SignIn.route),
                  ),
                ],
              ),
              const KTitle(text: 'OTP Verification'),
              const SubTitle(
                text: 'Please Check Your Email To See The Verification Code',
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  KTitle(text: 'OTP Code', fSize: 20),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputCodeField(),
                  SizedBox(
                    width: 10,
                  ),
                  InputCodeField(),
                  SizedBox(
                    width: 10,
                  ),
                  InputCodeField(),
                  SizedBox(
                    width: 10,
                  ),
                  InputCodeField(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CButton(
                text: 'Verify',
                hPadding: 135,
                onpressed: () => context.go(
                  SignIn.route,
                ),
              ),
              const Row(
                children: [
                  TButton(
                    text: 'Resend Code',
                    boldness: FontWeight.w500,
                    color: Colors.black26,
                  ),
                  Spacer(),
                  TimerCountDown(),
                ],
              )
            ],
          )),
    );
  }
}
