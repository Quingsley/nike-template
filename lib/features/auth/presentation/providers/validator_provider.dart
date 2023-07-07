import 'package:form_field_validator/form_field_validator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'validator_provider.g.dart';

@riverpod
MultiValidator passwordValidator(PasswordValidatorRef ref) {
  return MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
}

@riverpod
MultiValidator emailValidator(EmailValidatorRef ref) {
  return MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(
      errorText: 'Please Enter a valid Email',
    )
  ]);
}

@riverpod
MultiValidator userNameValidator(UserNameValidatorRef ref) {
  return MultiValidator([
    RequiredValidator(errorText: 'Username is required'),
    MinLengthValidator(8, errorText: 'username must be at least 3 digits long')
  ]);
}
