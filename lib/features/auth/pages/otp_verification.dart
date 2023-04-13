import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../common/back_button.dart';
import '../components/custom_button.dart';
import '../components/text_button.dart';
import '../components/timer_countdown.dart';
import '../components/title.dart';

import '../../../common/pages.dart';
import '../components/inputcode_field.dart';
import '../components/subtitle.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

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
                    onpress: () => context.go(
                      '/${Screens.signin.name}',
                    ),
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
              Row(
                children: const [
                  KTitle(text: 'OTP Code', fSize: 20),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
                  '/${Screens.signin.name}',
                ),
              ),
              Row(
                children: const [
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
