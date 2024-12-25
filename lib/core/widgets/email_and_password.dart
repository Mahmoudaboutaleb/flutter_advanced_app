import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/app_regex.dart';
import 'package:flutter_advanced_app/core/widgets/doc_text_form_field.dart';
import 'package:flutter_advanced_app/core/widgets/password_validations.dart';
import 'package:flutter_advanced_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  TextEditingController passwordController = TextEditingController();
  bool isSecure = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
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
        key: context.read<LoginCubit>().formKey,
        child: Column(children: [
          DocTextFormField(
            hintText: "Email",
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please Enter A Valid Email';
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          DocTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: "Password",
            isSecure: isSecure,
            suffixIcon: passwordController.text.isEmpty
                ? SizedBox.shrink()
                : IconButton(
                    onPressed: () {
                      setState(() {
                        isSecure = !isSecure;
                      });
                    },
                    icon: isSecure
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
          PasswordValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasNumber: hasNumber,
              hasSpecialCharacters: hasSpecialCharacters,
              hasMinLength: hasMinLength)
        ]));
  }
}
