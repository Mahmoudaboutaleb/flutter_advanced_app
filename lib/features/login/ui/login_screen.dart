import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_advanced_app/core/widgets/doc_button_widget.dart';
import 'package:flutter_advanced_app/core/widgets/doc_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                const SizedBox(height: 8),
                Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: TextStyles.font14GreyReqular),
                SizedBox(height: 36.h),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        DocTextFormField(
                          hintText: "Email",
                          controller: emailController,
                        ),
                        SizedBox(height: 16.h),
                        DocTextFormField(
                          controller: passwordController,
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
                        ),
                        SizedBox(height: 16.h),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyles.font13BlueReqular,
                            )),
                        SizedBox(height: 41.h),
                        DocButtonWidget(text: "Login", onTap: () {}),
                        SizedBox(
                          height: 46,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 1.0,
                                height: 1,
                                color: Color(0xFFE0E0E0),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "Or sign in with",
                                style: TextStyles.font12GreyReqular,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 1.0,
                                height: 1,
                                color: Color(0xFFE0E0E0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 21,
                              backgroundColor: Color(0xFFF5F5F5),
                              child: GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svg/google_logo.svg",
                                  width: 20,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: Color(0xFFF5F5F5),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                icon: Icon(
                                  Icons.facebook,
                                  color: ColorsManager.mainBlue,
                                  size: 30,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Color(0xFFF5F5F5),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                icon: Icon(
                                  Icons.apple,
                                  color: Color(0xFF000000),
                                  size: 30,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32.h),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "By logging, you agree to our ",
                                  style: TextStyles.font11Grey500
                                      .copyWith(color: Color(0xFF9E9E9E))),
                              TextSpan(
                                  text: "Terms & Conditions",
                                  style: TextStyles.font11Grey500
                                      .copyWith(color: Color(0xFF242424))),
                              TextSpan(
                                  text: " and ",
                                  style: TextStyles.font11Grey500
                                      .copyWith(color: Color(0xFF9E9E9E))),
                              TextSpan(
                                  text: "\nPrivacy Policy.",
                                  style: TextStyles.font11Grey500.copyWith(
                                      color: Color(0xFF242424), height: 1.7)),
                            ])),
                        SizedBox(height: 24.h),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Already have an account? ",
                                style: TextStyles.font11Grey500
                                    .copyWith(color: Color(0xFF242424))),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => SignUpScreen(),
                                  //   ),
                                  // );
                                },
                              text: "Sign Up",
                              style: TextStyles.font11BlueMedieum,
                            ),
                          ],
                        ))
                      ],
                    )),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
