import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/app_regex.dart';
import 'package:flutter_advanced_app/core/widgets/doc_text_form_field.dart';
import 'package:flutter_advanced_app/core/widgets/password_validations.dart';
import 'package:flutter_advanced_app/features/sign%20up/logic/cubit/signup_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForms extends StatefulWidget {
  const RegisterForms({super.key});

  @override
  State<RegisterForms> createState() => _RegisterFormsState();
}

class _RegisterFormsState extends State<RegisterForms> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  bool isPhoneNumberValid = false;

  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
    setUpPaswordControllerListener();
    super.initState();
  }

  void setUpPaswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignupCubit>().formKey,
        child: Column(children: [
          DocTextFormField(
            hintText: "Name",
            controller: context.read<SignupCubit>().nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter A Valid Name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          DocTextFormField(
            controller: context.read<SignupCubit>().phoneNumberController,
            hintText: "Phone Number",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please Enter A Valid Phone Number';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          DocTextFormField(
              hintText: "Email",
              controller: context.read<SignupCubit>().emailController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please Enter A Valid Email';
                }
                return null;
              }),
          SizedBox(height: 16.h),
          DocTextFormField(
            controller: context.read<SignupCubit>().passwordController,
            hintText: "Password",
            isSecure: isPasswordObscureText,
            suffixIcon: passwordController.text.isEmpty
                ? SizedBox.shrink()
                : IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordObscureText = !isPasswordObscureText;
                      });
                    },
                    icon: isPasswordObscureText
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter A Valid Password';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          DocTextFormField(
            controller: context.read<SignupCubit>().confirmPasswordController,
            hintText: "Confirm Password",
            isSecure: isPasswordConfirmationObscureText,
            suffixIcon: confirmPasswordController.text.isEmpty
                ? SizedBox.shrink()
                : IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordConfirmationObscureText =
                            !isPasswordConfirmationObscureText;
                      });
                    },
                    icon: isPasswordConfirmationObscureText
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility)),
            validator: (value) {
              if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'Passwords Do Not Match';
              }
            },
          ),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          )
        ]));
  }
}
