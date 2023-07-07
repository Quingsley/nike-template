import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:nike_app/common/widgets/custom_button.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_in.dart';
import 'package:nike_app/features/auth/presentation/providers/validator_provider.dart';
import 'package:nike_app/features/auth/presentation/widgets/google_button.dart';
import 'package:nike_app/features/auth/presentation/widgets/input_field.dart';
import 'package:nike_app/features/auth/presentation/widgets/subtitle.dart';
import 'package:nike_app/features/auth/presentation/widgets/title.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  static const String route = '/signup';

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void onSubmitForm() {
    if (_formKey.currentState!.validate()) {
      print('Valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    var passwordValidator = ref.watch(passwordValidatorProvider);
    var emailValidator = ref.watch(emailValidatorProvider);
    var userNameValidator = ref.watch(userNameValidatorProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.scaffoldBackgroundColor,
        leading: KBackButton(
          margin: 20,
          onpress: () => context.go(SignIn.route),
        ),
      ),
      backgroundColor: AppStyles.scaffoldBackgroundColor,
      body: LayoutBuilder(builder: (context, constraints) {
        return Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const KTitle(text: 'Register Account'),
                      const SubTitle(
                          text:
                              'Fill your Details Or Continue With Social Media'),
                      InputField(
                        fieldTitle: 'Your Name',
                        placeHolderText: 'XXXXXXXX',
                        controller: nameController,
                        validator: userNameValidator,
                      ),
                      InputField(
                        controller: emailController,
                        fieldTitle: 'Email Addresss',
                        placeHolderText: 'xyz@gmail.com',
                        validator: emailValidator,
                      ),
                      InputField(
                        controller: passwordController,
                        fieldTitle: 'Password',
                        placeHolderText: '12345678',
                        isObscured: true,
                        validator: passwordValidator,
                      ),
                      CButton(
                        text: 'Sign Up',
                        hPadding: 135,
                        onpressed: () {
                          onSubmitForm();
                        },
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
              ),
            ),
          ),
        );
      }),
    );
  }
}
