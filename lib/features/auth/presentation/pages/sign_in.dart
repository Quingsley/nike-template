import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:nike_app/common/widgets/custom_button.dart';
import 'package:nike_app/features/auth/data/models/app_user.dart';
import 'package:nike_app/features/auth/presentation/pages/forgot_password.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_up.dart';
import 'package:nike_app/features/auth/presentation/providers/validator_provider.dart';
import 'package:nike_app/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:nike_app/features/auth/presentation/widgets/google_button.dart';
import 'package:nike_app/features/auth/presentation/widgets/input_field.dart';
import 'package:nike_app/features/auth/presentation/widgets/subtitle.dart';
import 'package:nike_app/features/auth/presentation/widgets/text_button.dart';
import 'package:nike_app/features/auth/presentation/widgets/title.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  static const String route = '/signin';

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void onSubmitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      ref.read(authViewModelProvider.notifier).signIn(
          AppUser(userId: '1', email: emailController.text, name: 'Jerome'));
      emailController.clear();
      passwordController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    var emailValidator = ref.watch(emailValidatorProvider);
    var passwordValidator = ref.watch(passwordValidatorProvider);
    var authVMAsync = ref.watch(authViewModelProvider);

    return Scaffold(
      backgroundColor: AppStyles.scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyles.scaffoldBackgroundColor,
        leading: KBackButton(
          margin: 20,
          onpress: () => context.go("/"),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) =>
            Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        validator: emailValidator,
                      ),
                      InputField(
                        controller: passwordController,
                        fieldTitle: 'Password',
                        placeHolderText: '12345678',
                        isObscured: true,
                        validator: passwordValidator,
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
                      authVMAsync.isLoading
                          ? const CircularProgressIndicator()
                          : CButton(
                              text: 'Sign in',
                              hPadding: 135,
                              onpressed: () {
                                onSubmitForm();
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
