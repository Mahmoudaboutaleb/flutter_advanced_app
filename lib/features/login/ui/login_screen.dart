import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_advanced_app/core/widgets/doc_button_widget.dart';
import 'package:flutter_advanced_app/core/widgets/email_and_password.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_advanced_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/dont_have_account.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    EmailAndPassword(),
                    SizedBox(height: 16.h),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13BlueReqular,
                        )),
                    SizedBox(height: 41.h),
                    DocButtonWidget(
                        text: "Login",
                        onTap: () {
                          validateThenDoLogin(context);
                        }),
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
                          padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    TermsAndConditions(),
                    SizedBox(height: 24.h),
                    DontHaveAccountWidget(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
